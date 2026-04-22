CREATE TABLE orders (
    order_id INT,
    customer_id INT,
    order_date DATE,
    revenue DECIMAL
);

INSERT INTO orders VALUES
(1, 101, '2024-01-10', 100),
(2, 102, '2024-01-15', 200),
(3, 101, '2024-02-10', 150),
(4, 103, '2024-02-20', 300),
(5, 104, '2024-03-05', 80),
(6, 105, '2024-03-10', 90),
(7, 101, '2024-03-15', 70);

SELECT 
    DATE_TRUNC('month', order_date) AS month,
    SUM(revenue) AS total_revenue
FROM orders
GROUP BY month
ORDER BY month;


SELECT 
    DATE_TRUNC('month', order_date) AS month,
    COUNT(order_id) AS orders_count
FROM orders
GROUP BY month;

SELECT 
    DATE_TRUNC('month', order_date) AS month,
    AVG(revenue) AS avg_check
FROM orders
GROUP BY month;

SELECT 
    DATE_TRUNC('month', order_date) AS month,
    COUNT(DISTINCT customer_id) AS customers
FROM orders
GROUP BY month;
