
-- Create Table
CREATE TABLE sales (
    order_id INT,
    customer_name VARCHAR(50),
    product VARCHAR(50),
    category VARCHAR(50),
    quantity INT,
    price INT,
    order_date DATE,
    city VARCHAR(50)
);

-- Insert Data
INSERT INTO sales VALUES
(1, 'Amit', 'T-shirt', 'Clothing', 2, 500, '2024-01-10', 'Delhi'),
(2, 'Riya', 'Shoes', 'Footwear', 1, 2000, '2024-01-11', 'Mumbai'),
(3, 'Amit', 'Jeans', 'Clothing', 1, 1500, '2024-01-12', 'Delhi'),
(4, 'Neha', 'Watch', 'Accessories', 1, 3000, '2024-01-15', 'Bangalore'),
(5, 'Riya', 'T-shirt', 'Clothing', 3, 500, '2024-01-16', 'Mumbai'),
(6, 'Karan', 'Shoes', 'Footwear', 2, 2000, '2024-01-18', 'Delhi'),
(7, 'Simran', 'Bag', 'Accessories', 1, 2500, '2024-02-05', 'Delhi'),
(8, 'Amit', 'Shoes', 'Footwear', 1, 2000, '2024-02-07', 'Delhi'),
(9, 'Neha', 'T-shirt', 'Clothing', 2, 500, '2024-02-10', 'Bangalore'),
(10, 'Riya', 'Watch', 'Accessories', 1, 3000, '2024-02-15', 'Mumbai');

-- Total Revenue
SELECT SUM(quantity * price) AS total_revenue FROM sales;

-- Revenue by Category
SELECT category, SUM(quantity * price) AS revenue
FROM sales
GROUP BY category
ORDER BY revenue DESC;

-- Top Products
SELECT product, SUM(quantity) AS total_sold
FROM sales
GROUP BY product
ORDER BY total_sold DESC;

-- Top Customers
SELECT customer_name, SUM(quantity * price) AS total_spent
FROM sales
GROUP BY customer_name
ORDER BY total_spent DESC;

-- Sales by City
SELECT city, SUM(quantity * price) AS revenue
FROM sales
GROUP BY city
ORDER BY revenue DESC;

-- Monthly Trend
SELECT MONTH(order_date) AS month, SUM(quantity * price) AS revenue
FROM sales
GROUP BY MONTH(order_date)
ORDER BY month;
