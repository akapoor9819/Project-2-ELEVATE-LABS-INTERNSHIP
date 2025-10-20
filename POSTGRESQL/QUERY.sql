SELECT * FROM sales_data;

-- ---------------------------1. Total Sales by City and Season-------------------------------
CREATE VIEW total_sales_by_city_and_season AS
SELECT
	city,
	season,
	SUM(total_cost) AS total_sales
FROM sales_data
GROUP BY city, season
ORDER BY total_sales DESC;

SELECT * FROM total_sales_by_city_and_season;


-- ---------------------------2. Total Sales in Last 6 Months--------------------------------
CREATE VIEW total_sales_in_last_6_months AS
SELECT
	SUM(total_cost) AS total_sales_last_6_months
FROM sales_data
WHERE date >= CURRENT_DATE - INTERVAL '6 MONTHS';

SELECT * FROM total_sales_in_last_6_months


-- ---------------------------3. Average Sales by Store Type---------------------------------
CREATE VIEW average_sales_by_store_type AS
SELECT
	store_type,
	AVG(total_cost) AS avg_sales
FROM sales_data
GROUP BY store_type
ORDER BY avg_sales DESC;

SELECT * FROM average_sales_by_store_type;


-- ---------------------------4. Customer Category Sales Summary----------------------------
CREATE VIEW customer_category_sales AS
SELECT
	customer_category,
	SUM(total_cost) AS total_sales,
	AVG(total_cost) AS avg_sales
FROM sales_data
GROUP BY customer_category;

SELECT * FROM customer_category_sales;


-- ---------------------------5. Payment Method Usage Count-------------------------------
CREATE VIEW payment_method_usage_count AS
SELECT
	payment_method,
	COUNT(*) AS total_count
FROM sales_data
GROUP BY payment_method;

SELECT * FROM payment_method_usage_count;


-- --------------------------6. Sales with and without Discount-----------------------------
CREATE VIEW sales_with_and_wihtout_discount AS
SELECT
	discount_applied,
	COUNT(*) AS order_count,
	SUM (total_cost) AS total_amount
FROM sales_data
GROUP BY discount_applied;

SELECT * FROM sales_with_and_wihtout_discount;


-- --------------------------7. Promotion wise Sales--------------------------------------
CREATE VIEW promotion_wise_sales AS
SELECT
	promotion,
	SUM(total_cost) AS total_sales,
	COUNT(*) AS order_count
FROM sales_data
GROUP BY promotion
ORDER BY total_sales;

SELECT * FROM promotion_wise_sales;


-- --------------------------8. Sales by City and Store Type------------------------------
CREATE VIEW sales_by_city_and_store_type AS
SELECT
	city,
	store_type,
	SUM(total_cost) AS total_sales
FROM sales_data
GROUP BY city, store_type
ORDER BY total_sales DESC;

SELECT * FROM sales_by_city_and_store_type;


-- -------------------------9. Payment Method Usage and Average Sales----------------------
CREATE VIEW payment_method_usage_and_average_sales AS
SELECT
	payment_method,
	AVG(total_cost) AS avg_sales
FROM sales_data
GROUP BY payment_method
ORDER BY avg_sales;

SELECT * FROM payment_method_usage_and_average_sales;