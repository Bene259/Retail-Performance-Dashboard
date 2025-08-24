CREATE DATABASE nespresso_retail;
USE nespresso_retail;

-- righe per ogni tabella
SELECT 'products' AS table_name, COUNT(*) AS total FROM products
UNION
SELECT 'customers', COUNT(*) FROM customers
UNION
SELECT 'staff', COUNT(*) FROM staff
UNION
SELECT 'sales', COUNT(*) FROM sales
UNION
SELECT 'store_traffic', COUNT(*) FROM store_traffic
UNION
SELECT 'stock_levels', COUNT(*) FROM stock_levels;

-- fatturato totale
SELECT 
    SUM(Total) AS total_revenue
FROM sales;

-- fatturato per mese 
SELECT 
    DATE_FORMAT(Date, '%Y-%m') AS month,
    ROUND(SUM(Total), 2) AS monthly_revenue
FROM sales
GROUP BY month
ORDER BY month;

-- top 10 prodotti più venduti
SELECT 
    p.Product_Name,
    SUM(s.Quantity) AS total_units_sold,
    ROUND(SUM(s.Total), 2) AS revenue
FROM sales s
JOIN products p ON s.Product_ID = p.Product_ID
GROUP BY p.Product_Name
ORDER BY revenue DESC
LIMIT 10;

-- vendite per addetto vendita
SELECT 
    Staff_Name,
    COUNT(*) AS num_sales,
    ROUND(SUM(Total), 2) AS total_revenue
FROM sales
GROUP BY Staff_Name
ORDER BY total_revenue DESC;

-- scontrino medio per mese
SELECT 
    DATE_FORMAT(Date, '%Y-%m') AS month,
    ROUND(AVG(Total), 2) AS avg_ticket
FROM sales
GROUP BY month
ORDER BY month;

-- conversion rate giornaliero
SELECT 
    st.Date,
    st.Total_Entries,
    COUNT(s.ID) AS sales_count,
    ROUND(COUNT(s.ID) / st.Total_Entries * 100, 2) AS conversion_rate
FROM store_traffic st
LEFT JOIN sales s ON s.Date = st.Date
GROUP BY st.Date
ORDER BY st.Date;

-- yoy comparison 2024 vs 2025
SELECT 
    YEAR(Date) AS year,
    DATE_FORMAT(Date, '%m') AS month,
    ROUND(SUM(Total), 2) AS revenue
FROM sales
GROUP BY year, month
ORDER BY month, year;

-- vendite per categoria prodotto
SELECT p.Category, ROUND(SUM(s.Total), 2) AS revenue, SUM(s.Quantity) AS units_sold
FROM sales s JOIN products p ON s.Product_ID = p.Product_ID
GROUP BY p.Category ORDER BY revenue DESC;

-- performance per addetto vendita
SELECT 
    Staff_Name,
    COUNT(*) AS num_sales,
    ROUND(SUM(Total), 2) AS revenue,
    ROUND(AVG(Total), 2) AS avg_ticket
FROM sales
GROUP BY Staff_Name
ORDER BY revenue DESC;

-- spesa totale per cliente 
SELECT 
    c.Full_Name,
    COUNT(s.ID) AS num_orders,
    ROUND(SUM(s.Total), 2) AS total_spent,
    ROUND(AVG(s.Total), 2) AS avg_order
FROM sales s
JOIN customers c ON s.Customer_ID = c.Customer_ID
GROUP BY c.Full_Name
ORDER BY total_spent DESC
LIMIT 20;

-- segmentazione per canale di iscrizione
SELECT 
    c.Signup_Channel,
    COUNT(DISTINCT s.Customer_ID) AS num_customers,
    ROUND(SUM(s.Total), 2) AS total_spent
FROM sales s
JOIN customers c ON s.Customer_ID = c.Customer_ID
GROUP BY c.Signup_Channel;

-- vendita per fascia oraria
SELECT 
    LEFT(Sale_Time, 2) AS hour,
    COUNT(*) AS num_sales,
    ROUND(SUM(Total), 2) AS revenue
FROM sales
GROUP BY hour
ORDER BY hour;

-- conversion rate mensile
SELECT 
    DATE_FORMAT(st.Date, '%Y-%m') AS month,
    SUM(st.Total_Entries) AS total_entries,
    COUNT(s.ID) AS total_sales,
    ROUND(COUNT(s.ID) / SUM(st.Total_Entries) * 100, 2) AS conversion_rate
FROM store_traffic st
LEFT JOIN sales s ON st.Date = s.Date
GROUP BY month
ORDER BY month;

-- rotazione magazzino per prodotto
SELECT 
    p.Product_Name,
    p.Category,
    SUM(s.Quantity) AS units_sold,
    AVG(sl.Stock_Level) AS avg_stock,
    ROUND(SUM(s.Quantity) / NULLIF(AVG(sl.Stock_Level), 0), 2) AS stock_turnover
FROM sales s
JOIN products p ON s.Product_ID = p.Product_ID
JOIN stock_levels sl ON s.Product_ID = sl.Product_ID AND s.Date = sl.Date
GROUP BY p.Product_ID
ORDER BY stock_turnover DESC;

