-- Sample project: simple sales analysis in MySQL
CREATE DATABASE IF NOT EXISTS sales_portfolio;
USE sales_portfolio;

CREATE TABLE IF NOT EXISTS sales (
  sale_id INT PRIMARY KEY AUTO_INCREMENT,
  product_name VARCHAR(100) NOT NULL,
  category VARCHAR(60) NOT NULL,
  quantity INT NOT NULL,
  unit_price DECIMAL(10,2) NOT NULL,
  sale_date DATE NOT NULL
);

INSERT INTO sales (product_name, category, quantity, unit_price, sale_date) VALUES
('Notebook', 'Stationery', 12, 850.00, '2026-01-05'),
('Pen Pack', 'Stationery', 8, 1200.00, '2026-01-08'),
('USB Drive', 'Electronics', 5, 4500.00, '2026-02-02'),
('Notebook', 'Stationery', 10, 850.00, '2026-02-11'),
('Headphones', 'Electronics', 3, 12500.00, '2026-02-18');

-- Revenue by product
SELECT product_name, SUM(quantity * unit_price) AS revenue
FROM sales
GROUP BY product_name
ORDER BY revenue DESC;

-- Monthly revenue
SELECT DATE_FORMAT(sale_date, '%Y-%m') AS month,
       SUM(quantity * unit_price) AS monthly_revenue
FROM sales
GROUP BY DATE_FORMAT(sale_date, '%Y-%m')
ORDER BY month;
