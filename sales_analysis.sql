--Query to create table:

CREATE TABLE sales (
    order_id VARCHAR(50),
    order_date DATE,
    customer_name VARCHAR(100),
    region VARCHAR(50),
    category VARCHAR(50),
    product_name VARCHAR(255),
    sales DECIMAL(10,2),
    quantity INT,
    discount DECIMAL(5,2),
    profit DECIMAL(10,2)
);

-- Query 1: Total Sales by Region
SELECT 
    Region AS region, 
    ROUND(SUM(Sales), 2) AS total_sales
FROM sales
GROUP BY Region
ORDER BY total_sales DESC;

-- Query 2: Top 5 Profitable Products
SELECT 
    "Product Name" AS product_name,
    Category AS category,
    ROUND(SUM(Profit), 2) AS total_profit
FROM sales
GROUP BY "Product Name", Category
ORDER BY total_profit DESC
LIMIT 5;

-- Query 3: Monthly Sales Trend
SELECT 
    strftime('%m', "Order Date") AS month_num,
    ROUND(SUM(Sales), 2) AS total_sales
FROM sales
GROUP BY month_num
ORDER BY month_num ASC;

-- Query 4: Highest Discount Impact on Profitability
SELECT 
    Discount AS discount, 
    COUNT(*) AS total_transactions,
    ROUND(AVG(Profit), 2) AS avg_profit,
    ROUND(SUM(Profit), 2) AS total_profit
FROM sales
GROUP BY Discount
ORDER BY Discount ASC;

-- Query 5: Category-Wise Revenue, Profit & Margin (%)
SELECT 
    Category AS category,
    ROUND(SUM(Sales), 2) AS total_sales,
    ROUND(SUM(Profit), 2) AS total_profit,
    ROUND((SUM(Profit) / SUM(Sales)) * 100, 2) AS profit_margin_pct
FROM sales
GROUP BY Category
ORDER BY total_profit DESC;