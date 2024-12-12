from flask import Flask, request, jsonify, render_template, redirect, url_for, session, flash
from flask_sqlalchemy import SQLAlchemy
from flask_login import LoginManager, UserMixin, login_user, login_required, logout_user, current_user
from datetime import date
from sqlalchemy.orm import Session

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

class Order(db.Model):
    __tablename__ = 'order_table'
    order_id = db.Column(db.Integer, primary_key=True)
    customer_id = db.Column(db.Integer, db.ForeignKey('customer_table.customer_id'), nullable=False)
    employee_id = db.Column(db.Integer, db.ForeignKey('employee_table.employee_id'), nullable=True)
    order_date = db.Column(db.Date, nullable=False)
    order_status = db.Column(db.String(9), nullable=False)
    admin_id = db.Column(db.Integer, nullable=True)

    # Explicit relationship to OrderDetail
    order_details = db.relationship('OrderDetail', cascade='all, delete', lazy='dynamic')

class FoodItem(db.Model):
    __tablename__ = 'fooditem_table'
    food_item_id = db.Column(db.Integer, primary_key=True)
    food_name = db.Column(db.String(100), nullable=False)
    food_category = db.Column(db.String(50), nullable=False)
    food_price = db.Column(db.Float, nullable=False)
    food_stockquantity = db.Column(db.Integer, nullable=False)
    admin_id = db.Column(db.Integer, nullable=False)
    food_url = db.Column(db.String(255))

    # Explicit relationship to OrderDetail
    order_details = db.relationship('OrderDetail', cascade='all, delete', lazy='dynamic')

class OrderDetail(db.Model):
    __tablename__ = 'orderdetail_table'
    order_detail_id = db.Column(db.Integer, primary_key=True)
    order_id = db.Column(db.Integer, db.ForeignKey('order_table.order_id'), nullable=False)
    food_item_id = db.Column(db.Integer, db.ForeignKey('fooditem_table.food_item_id'), nullable=False)
    orderdetail_quantity = db.Column(db.Integer, default=0, nullable=False)

    # Relationships to parent models
    order = db.relationship('Order')
    food_item = db.relationship('FoodItem')

 


@login_manager.user_loader
def load_user(user_id):
    try:
        user_type, user_id = user_id.split("-")
        session = db.session
        if user_type == "customer":
            return session.get(Customer, int(user_id))
        elif user_type == "employee":
            return session.get(Employee, int(user_id))
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

@app.route('/add_to_cart/<int:item_id>', methods=['POST'])
@login_required
def add_to_cart(item_id):
    food_item = FoodItem.query.get(item_id)
    if not food_item:
        return jsonify({"success": False, "message": "Item not found"}), 404

    # Retrieve the cart from session or initialize it
    cart = session.get('cart', [])

    # Check if the item is already in the cart
    for item in cart:
        if 'food_item_id' in item and item['food_item_id'] == item_id:
            item['quantity'] += 1
            item['total'] = item['quantity'] * food_item.food_price
            session['cart'] = cart
            return jsonify({"success": True, "message": "Item quantity updated in cart"}), 200

    # Add new item to the cart
    cart.append({
        'food_item_id': item_id,
        'food_name': food_item.food_name,
        'food_price': float(food_item.food_price),  # Ensure compatibility with JSON
        'quantity': 1,
        'total': float(food_item.food_price)
    })
    session['cart'] = cart
    return jsonify({"success": True, "message": "Item added to cart"}), 200




# Route to display checkout page
@app.route('/checkout')
@login_required
def checkout():
    cart_items = session.get('cart', [])
    subtotal = sum(item['total'] for item in cart_items)
    tax = round(subtotal * 0.07, 2)  # Example tax calculation (7%)
    total = round(subtotal + tax, 2)
    return render_template('checkout.html', cart_items=cart_items, subtotal=subtotal, tax=tax, total=total)


@app.route('/orders')
@login_required
def orders():
    orders = Order.query.filter_by(customer_id=current_user.customer_id).all()
    orders_with_details = []
    
    for order in orders:
        details = OrderDetail.query.filter_by(order_id=order.order_id).all()
        orders_with_details.append({
            'order': order,
            'details': details
        })
    
    return render_template('orders.html', orders_with_details=orders_with_details)






from datetime import date

@app.route('/place_order', methods=['POST'])
@login_required
def place_order():
    cart_items = session.get('cart', [])
    if not cart_items:
        return jsonify({"success": False, "message": "Cart is empty!"}), 400

    try:
        # Create the order
        new_order = Order(
            customer_id=current_user.customer_id,
            employee_id=1,  # Assign if you have logic to associate an employee
            order_date=date.today(),
            order_status="Pending",
            admin_id=1  # Replace with your admin logic if needed
        )
        db.session.add(new_order)
        db.session.commit()  # Commit first to generate the order_id

        # Add order details
        for item in cart_items:
            food_item = FoodItem.query.get(item['food_item_id'])
            if food_item and item['quantity'] <= food_item.food_stockquantity:
                # Deduct stock
                food_item.food_stockquantity -= item['quantity']
                db.session.add(food_item)

                # Create order detail entry
                order_detail = OrderDetail(
                    order_id=new_order.order_id,
                    food_item_id=item['food_item_id'],
                    orderdetail_quantity=item['quantity']
                )
                db.session.add(order_detail)
            else:
                return jsonify({"success": False, "message": f"Insufficient stock for {item['food_name']}"}), 400

        db.session.commit()  # Commit all changes
        session['cart'] = []  # Clear the cart
        return jsonify({"success": True, "message": "Order placed successfully!"})
    except Exception as e:
        print("Error during order placement:", str(e))
        db.session.rollback()  # Roll back changes in case of error
        return jsonify({"success": False, "message": "An error occurred while placing the order"}), 500

@app.route('/order_details/<int:order_id>')
@login_required
def order_details(order_id):
    if isinstance(current_user, Customer):
        # Ensure the order belongs to the current customer
        order = Order.query.filter_by(order_id=order_id, customer_id=current_user.customer_id).first()
        if not order:
            return jsonify({"success": False, "message": "Order not found or unauthorized"}), 404

        details = OrderDetail.query.filter_by(order_id=order_id).all()
        return render_template('order_details.html', order=order, details=details)

    return redirect(url_for('login'))


@app.route('/debug_cart')
def debug_cart():
    return jsonify(session.get('cart', []))




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
