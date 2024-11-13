from flask import Flask, request, jsonify, render_template, redirect, url_for, session, flash
from flask_sqlalchemy import SQLAlchemy
from flask_login import LoginManager, UserMixin, login_user, login_required, logout_user, current_user

app = Flask(__name__)
app.config["SQLALCHEMY_DATABASE_URI"] = "sqlite:///Checkpoint2-dbase.sqlite3"
app.config["SQLALCHEMY_TRACK_MODIFICATIONS"] = False
app.secret_key = "your_secret_key"
db = SQLAlchemy(app)
login_manager = LoginManager(app)
login_manager.login_view = 'login'


# Initialize an empty cart in the session
@app.before_request
def initialize_cart():
    session.setdefault('cart', [])

# Models
class Customer(UserMixin, db.Model):
    __tablename__ = 'customer_table'
    customer_id = db.Column(db.Integer, primary_key=True)
    customer_name = db.Column(db.String(100), nullable=False)
    customer_email = db.Column(db.String(100), unique=True, nullable=False)
    customer_phone = db.Column(db.String(50))
    customer_address = db.Column(db.String(200))

    def get_id(self):
        return f"customer-{self.customer_id}"
    
class Employee(UserMixin, db.Model):
    __tablename__ = 'employee_table'
    employee_id = db.Column(db.Integer, primary_key=True)
    employee_name = db.Column(db.String(100), nullable=False)
    employee_email = db.Column(db.String(100), unique=True, nullable=False)
    employee_phone = db.Column(db.String(50))
    admin_id = db.Column(db.Integer, db.ForeignKey('admin_table.admin_id'), nullable=True)

    def get_id(self):
        return f"employee-{self.employee_id}"

class FoodItem(db.Model):
    __tablename__ = 'fooditem_table'
    food_item_id = db.Column(db.Integer, primary_key=True)
    food_name = db.Column(db.String(100), nullable=False)
    food_category = db.Column(db.String(50), nullable=False)
    food_price = db.Column(db.Float, nullable=False)
    food_stockquantity = db.Column(db.Integer, nullable=False)
    admin_id = db.Column(db.Integer, nullable=False)
    food_url = db.Column(db.String(255))

@login_manager.user_loader
def load_user(user_id):
    try:
        user_type, user_id = user_id.split("-")
        if user_type == "customer":
            return Customer.query.get(int(user_id))
        elif user_type == "employee":
            return Employee.query.get(int(user_id))
    except ValueError:
        return None

# Root route that redirects to login page
@app.route('/')
def index():
    return redirect(url_for('login'))

# Login route
@app.route('/login', methods=['POST', 'GET'])
def login():
    if request.method == 'POST':
        username = request.form['username']
        email = request.form['email']
        
        # First, check if the user is a customer
        customer = Customer.query.filter_by(customer_name=username, customer_email=email).first()
        if customer:
            login_user(customer)
            return redirect(url_for('customer_home'))
        
        # If not a customer, check if they are an employee
        employee = Employee.query.filter_by(employee_name=username, employee_email=email).first()
        if employee:
            login_user(employee)
            return redirect(url_for('employee_home'))
        
        # If neither, flash an error message
        flash('Invalid username or email')
        return redirect(url_for('login'))
    
    return render_template('login.html')

# Sign-Up route (Only for customers)
@app.route('/signup', methods=['GET', 'POST'])
def signup():
    if request.method == 'POST':
        username = request.form['username']
        email = request.form['email']
        phone = request.form['phone']
        address = request.form['address']
        
        new_customer = Customer(customer_name=username, customer_email=email, customer_phone=phone, customer_address=address)
        db.session.add(new_customer)
        db.session.commit()
        return redirect(url_for('login'))
    
    return render_template('signup.html')

# Customer home page
@app.route('/customer_home')
@login_required
def customer_home():
    if isinstance(current_user, Customer):
        categories = db.session.query(FoodItem.food_category).distinct().all()
        items = FoodItem.query.all()  # Retrieve all items for display on the main page
        return render_template('home.html', categories=[cat[0] for cat in categories], items=items)
    return redirect(url_for('login'))

# Employee home page
@app.route('/employee_home')
@login_required
def employee_home():
    if isinstance(current_user, Employee):
        items = FoodItem.query.all()
        return render_template('employee_home.html', items=items)
    return redirect(url_for('login'))

# Route to add an item to the cart
@app.route('/add_to_cart/<int:item_id>', methods=['POST'])
@login_required
def add_to_cart(item_id):
    item = FoodItem.query.get(item_id)
    if not item:
        return jsonify({"message": "Item not found"}), 404
    
    quantity = request.json.get("quantity", 1)

    # Add item to session cart
    cart_item = {
        "food_name": item.food_name,
        "food_price": item.food_price,
        "quantity": quantity,
        "total": item.food_price * quantity
    }
    
    # Check if item already in cart; update quantity if so
    for product in session['cart']:
        if product['food_name'] == cart_item['food_name']:
            product['quantity'] += quantity
            product['total'] += item.food_price * quantity
            break
    else:
        session['cart'].append(cart_item)

    session.modified = True
    return jsonify({"message": "Item added to cart!"})

# Route to display checkout page
@app.route('/checkout')
@login_required
def checkout():
    cart_items = session.get('cart', [])
    subtotal = sum(item['total'] for item in cart_items)
    tax = round(subtotal * 0.07, 2)  # Example tax calculation (7%)
    total = round(subtotal + tax, 2)
    return render_template('checkout.html', cart_items=cart_items, subtotal=subtotal, tax=tax, total=total)

@app.route('/place_order', methods=['POST'])
@login_required
def place_order():
    if not isinstance(current_user, Customer):
        return jsonify({"success": False, "message": "Unauthorized"}), 403

    # Example cart items stored in session or database
    cart_items = session.get('cart_items', [])

    # Calculate the total and update stock
    total = 0
    for item in cart_items:
        food_item = FoodItem.query.get(item['food_item_id'])
        
        if food_item and item['quantity'] <= food_item.food_stockquantity:
            # Subtract ordered quantity from stock
            food_item.food_stockquantity -= item['quantity']
            total += food_item.food_price * item['quantity']
            db.session.add(food_item)  # Add the update to the session
        else:
            return jsonify({"success": False, "message": "Insufficient stock for item: " + food_item.food_name}), 400

    db.session.commit()  # Commit all stock updates to the database
    session['cart_items'] = []  # Clear the cart after placing the order

    return jsonify({"success": True, "message": "Order placed successfully!"})

# Logout route
@app.route('/logout')
@login_required
def logout():
    logout_user()
    return redirect(url_for('login'))

# Route for employees to update stock
@app.route('/update_stock/<int:item_id>', methods=['POST'])
@login_required
def update_stock(item_id):
    if isinstance(current_user, Employee):
        data = request.get_json()
        new_stock = data.get("stock")
        item = db.session.get(FoodItem, item_id)
        if item:
            item.food_stockquantity = new_stock
            db.session.commit()
            return jsonify({"message": "Stock updated successfully!"})
        return jsonify({"message": "Item not found"}), 404
    return jsonify({"message": "Unauthorized access"}), 403


if __name__ == "__main__":
    with app.app_context():
        db.create_all()
    app.run(debug=True)
