-- Creating the tables 

-- Admin Table with constraints
CREATE TABLE Admin (
    admin_id INTEGER PRIMARY KEY,
    admin_name VARCHAR NOT NULL,
    admin_email VARCHAR NOT NULL UNIQUE,
    admin_phone VARCHAR
);

-- Customer Table with constraints
CREATE TABLE Customer (
    customer_id INTEGER PRIMARY KEY,
    customer_name VARCHAR NOT NULL,
    customer_email VARCHAR NOT NULL UNIQUE,
    customer_phone VARCHAR,
    customer_address VARCHAR
);

-- Employee Table with constraints
CREATE TABLE Employee (
    employee_id INTEGER PRIMARY KEY,
    employee_name VARCHAR NOT NULL,
    employee_phone VARCHAR,
    employee_email VARCHAR NOT NULL UNIQUE,
    admin_id INTEGER NOT NULL,
    FOREIGN KEY (admin_id) REFERENCES Admin(admin_id)
);

-- Order Table with constraints and default value
CREATE TABLE "Order" (
    order_id INTEGER PRIMARY KEY,
    customer_id INTEGER NOT NULL,
    employee_id INTEGER,
    order_date DATE NOT NULL,
    order_status VARCHAR NOT NULL DEFAULT 'PENDING',
    admin_id INTEGER NOT NULL,
    FOREIGN KEY (customer_id) REFERENCES Customer(customer_id),
    FOREIGN KEY (employee_id) REFERENCES Employee(employee_id),
    FOREIGN KEY (admin_id) REFERENCES Admin(admin_id)
);

-- FoodItem Table with constraints
CREATE TABLE FoodItem (
    food_item_id INTEGER PRIMARY KEY,
    food_name VARCHAR NOT NULL UNIQUE,
    food_category VARCHAR NOT NULL,
    food_price DECIMAL NOT NULL,
    food_stockquantity INTEGER NOT NULL,
    admin_id INTEGER NOT NULL,
    FOREIGN KEY (admin_id) REFERENCES Admin(admin_id)
);

-- PantryLocation Table with constraints
CREATE TABLE PantryLocation (
    location_id INTEGER PRIMARY KEY,
    location_name VARCHAR NOT NULL,
    pantrylocation_section VARCHAR NOT NULL
);

-- OrderDetail Table with constraints and cascading delete
CREATE TABLE OrderDetail (
    order_detail_id INTEGER PRIMARY KEY,
    order_id INTEGER NOT NULL,
    food_item_id INTEGER NOT NULL,
    orderdetail_quantity INTEGER NOT NULL,
    FOREIGN KEY (order_id) REFERENCES "Order"(order_id) ON DELETE CASCADE,
    FOREIGN KEY (food_item_id) REFERENCES FoodItem(food_item_id)
);

-- FoodItemLocation Table with composite primary key
CREATE TABLE FoodItemLocation (
    food_item_id INTEGER NOT NULL,
    location_id INTEGER NOT NULL,
    PRIMARY KEY (food_item_id, location_id),
    FOREIGN KEY (food_item_id) REFERENCES FoodItem(food_item_id),
    FOREIGN KEY (location_id) REFERENCES PantryLocation(location_id)
);


-- Sample data for Admin Table
INSERT INTO Admin (admin_id, admin_name, admin_email, admin_phone) 
VALUES (1, 'Alice Admin', 'alice.admin@example.com', '123-456-7890'),
       (2, 'Bob Boss', 'bob.boss@example.com', '987-654-3210');

-- Sample data for Customer Table
INSERT INTO Customer (customer_id, customer_name, customer_email, customer_phone, customer_address) 
VALUES (1, 'John Doe', 'john.doe@example.com', '555-1234', '123 Elm St'),
       (2, 'Jane Smith', 'jane.smith@example.com', '555-5678', '456 Oak Ave');

-- Sample data for Employee Table
INSERT INTO Employee (employee_id, employee_name, employee_phone, employee_email, admin_id) 
VALUES (1, 'Emily Employee', '555-4321', 'emily.employee@example.com', 1),
       (2, 'Sam Staff', '555-8765', 'sam.staff@example.com', 2);

-- Sample data for Order Table
INSERT INTO "Order" (order_id, customer_id, employee_id, order_date, order_status, admin_id) 
VALUES (1, 1, 1, '2024-11-01', 'COMPLETED', 1),
       (2, 2, 2, '2024-11-02', 'PENDING', 2);

-- Sample data for FoodItem Table
INSERT INTO FoodItem (food_item_id, food_name, food_category, food_price, food_stockquantity, admin_id) 
VALUES (1, 'Apples', 'Fruit', 1.20, 100, 1),
       (2, 'Bread', 'Bakery', 2.50, 50, 2),
       (3, 'Milk', 'Dairy', 1.00, 30, 1);

-- Sample data for PantryLocation Table
INSERT INTO PantryLocation (location_id, location_name, pantrylocation_section) 
VALUES (1, 'Section A', 'Fruit and Vegetables'),
       (2, 'Section B', 'Bakery and Dairy');

-- Sample data for OrderDetail Table
INSERT INTO OrderDetail (order_detail_id, order_id, food_item_id, orderdetail_quantity) 
VALUES (1, 1, 1, 5),
       (2, 1, 3, 2),
       (3, 2, 2, 1);

-- Sample data for FoodItemLocation Table
INSERT INTO FoodItemLocation (food_item_id, location_id) 
VALUES (1, 1),
       (2, 2),
       (3, 2);


-- 1. Retrieve all admins
SELECT * FROM Admin;

-- 2. Retrieve all customers
SELECT * FROM Customer;

-- 3. Retrieve all employees and their associated admin
SELECT e.employee_name, e.employee_email, a.admin_name
FROM Employee e
JOIN Admin a ON e.admin_id = a.admin_id;

-- 4. Retrieve all orders with customer names
SELECT o.order_id, c.customer_name, o.order_date, o.order_status
FROM "Order" o
JOIN Customer c ON o.customer_id = c.customer_id;

-- 5. Retrieve all food items in stock
SELECT * FROM FoodItem WHERE food_stockquantity > 0;

-- 6. Retrieve all food items with their location
SELECT f.food_name, l.location_name, l.pantrylocation_section
FROM FoodItem f
JOIN FoodItemLocation fl ON f.food_item_id = fl.food_item_id
JOIN PantryLocation l ON fl.location_id = l.location_id;

-- 7. Retrieve orders placed by a specific customer
SELECT o.order_id, o.order_date, o.order_status
FROM "Order" o
JOIN Customer c ON o.customer_id = c.customer_id
WHERE c.customer_name = 'John Doe';

-- 8. Count the total number of orders
SELECT COUNT(*) AS total_orders FROM "Order";

-- 9. Calculate the total stock quantity of all food items
SELECT SUM(food_stockquantity) AS total_stock FROM FoodItem;

-- 10. Calculate the total value of all food items in stock
SELECT SUM(food_stockquantity * food_price) AS total_inventory_value FROM FoodItem;

-- 11. Find the most expensive food item
SELECT food_name, MAX(food_price) AS max_price FROM FoodItem;

-- 12. Retrieve order details for a specific order
SELECT od.order_detail_id, f.food_name, od.orderdetail_quantity
FROM OrderDetail od
JOIN FoodItem f ON od.food_item_id = f.food_item_id
WHERE od.order_id = 1;

-- 13. Update the stock quantity of a food item
UPDATE FoodItem SET food_stockquantity = food_stockquantity - 5 WHERE food_item_id = 1;

-- 14. Update an order status to 'COMPLETED'
UPDATE "Order" SET order_status = 'COMPLETED' WHERE order_id = 2;

-- 15. Delete a customer by ID
DELETE FROM Customer WHERE customer_id = 2;

-- 16. Retrieve all orders placed by customers along with the employee who processed them
SELECT o.order_id, c.customer_name, e.employee_name, o.order_date, o.order_status
FROM "Order" o
JOIN Customer c ON o.customer_id = c.customer_id
JOIN Employee e ON o.employee_id = e.employee_id;

-- 17. Count the number of orders by each order status
SELECT order_status, COUNT(*) AS status_count
FROM "Order"
GROUP BY order_status;

-- 18. List food items with low stock (less than 10)
SELECT food_name, food_stockquantity
FROM FoodItem
WHERE food_stockquantity < 10;

-- 19. Retrieve the locations where 'Bread' is stored
SELECT l.location_name, l.pantrylocation_section
FROM FoodItem f
JOIN FoodItemLocation fl ON f.food_item_id = fl.food_item_id
JOIN PantryLocation l ON fl.location_id = l.location_id
WHERE f.food_name = 'Bread';

-- 20. Add a new food item
INSERT INTO FoodItem (food_item_id, food_name, food_category, food_price, food_stockquantity, admin_id)
VALUES (4, 'Orange Juice', 'Beverage', 3.50, 20, 1);
