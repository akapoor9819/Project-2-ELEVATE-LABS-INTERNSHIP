CREATE TABLE sales_data(
transaction_id INT PRIMARY KEY,
date DATE,
customer_name VARCHAR(50),
product TEXT,
total_items INT,
total_cost FLOAT,
payment_method TEXT,
city TEXT,
store_type TEXT,
discount_applied TEXT,
customer_category TEXT,
season TEXT,
promotion TEXT
);