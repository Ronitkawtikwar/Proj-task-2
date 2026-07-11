-- Top 5 Products

SELECT product_name,
SUM(sales) AS revenue
FROM sales
GROUP BY product_name
ORDER BY revenue DESC
LIMIT 5;


-- Top Customers

SELECT customer_name,
SUM(sales) AS total_sales
FROM sales
GROUP BY customer_name
ORDER BY total_sales DESC
LIMIT 10;


-- Category Sales

SELECT category,
SUM(sales) AS total_sales
FROM sales
GROUP BY category;


-- Monthly Sales

SELECT MONTH(order_date) AS month,
SUM(sales) AS revenue
FROM sales
GROUP BY month;