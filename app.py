from flask import Flask, render_template, redirect, url_for, request
from flask_sqlalchemy import SQLAlchemy
from flask_login import LoginManager, UserMixin, login_user, login_required, logout_user, current_user

app = Flask(__name__)
app.config["SQLALCHEMY_DATABASE_URI"] = "sqlite:///Checkpoint2-dbase.sqlite3"
app.config["SQLALCHEMY_TRACK_MODIFICATIONS"] = False
app.secret_key = "your_secret_key"
db = SQLAlchemy(app)
login_manager = LoginManager(app)
login_manager.login_view = 'login'

# Models
class Customer(UserMixin, db.Model):
    __tablename__ = 'customer_table'
    customer_id = db.Column(db.Integer, primary_key=True)
    customer_name = db.Column(db.String(100), nullable=False)
    customer_email = db.Column(db.String(100), unique=True, nullable=False)
    customer_phone = db.Column(db.String(50))
    customer_address = db.Column(db.String(200))

    def get_id(self):
        return self.customer_id

class FoodItem(db.Model):
    __tablename__ = 'fooditem_table'
    food_item_id = db.Column(db.Integer, primary_key=True)
    food_name = db.Column(db.String(100), nullable=False)
    food_category = db.Column(db.String(50), nullable=False)
    food_price = db.Column(db.Float, nullable=False)
    food_stockquantity = db.Column(db.Integer, nullable=False)
    admin_id = db.Column(db.Integer, nullable=False)
    # food_image_url = db.Column(db.String(255))  # Add this line

@login_manager.user_loader
def load_user(customer_id):
    return Customer.query.get(int(customer_id))

# Login route
@app.route('/', methods=['GET', 'POST'])
def login():
    if request.method == 'POST':
        username = request.form['username']
        email = request.form['email']
        customer = Customer.query.filter_by(customer_name=username, customer_email=email).first()
        
        if customer:
            login_user(customer)
            return redirect(url_for('home'))
        
    return render_template('login.html')

# Sign-Up route
# Sign-Up route
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


# Home route displaying all categories and all items
@app.route('/home')
@login_required
def home():
    categories = db.session.query(FoodItem.food_category).distinct().all()
    items = FoodItem.query.all()  # Retrieve all items for display on the main page
    return render_template('home.html', categories=[cat[0] for cat in categories], items=items)

# View items by category
@app.route('/category/<category>')
@login_required
def view_category(category):
    items = FoodItem.query.filter_by(food_category=category).all()
    return render_template('category.html', category=category, items=items)

# Logout route
@app.route('/logout')
@login_required
def logout():
    logout_user()
    return redirect(url_for('login'))


# def seed_food_images():
#     items = FoodItem.query.all()
#     for item in items:
#         if not item.food_image_url:
#             item.food_image_url = f"https://placehold.co/150x150?text={item.food_category}"
#     db.session.commit()


if __name__ == "__main__":
    with app.app_context():
        # seed_food_images()
        db.create_all()
    app.run(debug=True)





