CREATE TABLE online_sales (
    order_id INTEGER,
    order_date DATE,
    amount REAL,
    product_id INTEGER
);


INSERT INTO online_sales VALUES
(1, '2023-01-05', 200, 101),
(2, '2023-01-15', 150, 102),
(3, '2023-02-10', 300, 103),
(4, '2023-02-18', 250, 104),
(5, '2023-03-02', 400, 105),
(6, '2023-03-15', 100, 106),
(7, '2023-03-20', 350, 107);


SELECT 
    strftime('%Y', order_date) AS year,
    strftime('%m', order_date) AS month,
    SUM(amount) AS total_revenue,
    COUNT(DISTINCT order_id) AS order_volume
FROM online_sales
GROUP BY year, month
ORDER BY year, month;


SELECT 
    strftime('%Y-%m', order_date) AS month,
    SUM(amount) AS total_revenue
FROM online_sales
GROUP BY month
ORDER BY total_revenue DESC
LIMIT 3;