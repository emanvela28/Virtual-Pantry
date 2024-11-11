from flask import Flask, render_template, request, redirect, url_for
from flask_sqlalchemy import SQLAlchemy
from flask_login import LoginManager, UserMixin, login_user, login_required, logout_user, current_user
from flask_bcrypt import Bcrypt
import os

app = Flask(__name__)
app.config['SQLALCHEMY_DATABASE_URI'] = 'sqlite:///Checkpoint2-dbase.sqlite3'
app.config['SQLALCHEMY_TRACK_MODIFICATIONS'] = False
app.secret_key = 'your_secret_key'

db = SQLAlchemy(app)
bcrypt = Bcrypt(app)
login_manager = LoginManager(app)
login_manager.login_view = 'login'

# Customer model based on customer_table
class Customer(UserMixin, db.Model):
    __tablename__ = 'customer_table'
    customer_id = db.Column(db.Integer, primary_key=True)  # Use customer_id as the primary key
    customer_name = db.Column(db.String(100), nullable=False)
    customer_email = db.Column(db.String(100), nullable=False)  # Email as the password
    customer_phone = db.Column(db.String(15), nullable=True)
    customer_address = db.Column(db.String(200), nullable=True)

    # Specify get_id() to return customer_id
    def get_id(self):
        return str(self.customer_id)  # Return customer_id as a string, which Flask-Login expects


# Load user for login manager
@login_manager.user_loader
def load_user(user_id):
    return Customer.query.get(int(user_id))

# Login route
@app.route('/login', methods=['GET', 'POST'])
def login():
    if request.method == 'POST':
        username = request.form['username']
        password = request.form['password']
        # Fetch customer by customer_name
        customer = Customer.query.filter_by(customer_name=username).first()
        # Verify if customer exists and if the password (customer_email) matches
        if customer and customer.customer_email == password:
            login_user(customer)
            return redirect(url_for('home'))
        else:
            return "Invalid username or password", 401
    return render_template('login.html')


@app.route('/')
@login_required
def home():
    return f"Welcome, {current_user.customer_name}! Email: {current_user.customer_email}, Phone: {current_user.customer_phone}, Address: {current_user.customer_address}"


# Logout route
@app.route('/logout')
@login_required
def logout():
    logout_user()
    return redirect(url_for('login'))

if __name__ == '__main__':
    app.run(debug=True)
