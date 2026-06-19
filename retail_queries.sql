USE retail_db;
SELECT 
    ROUND(SUM(Sales), 2) AS Total_Sales,
    ROUND(SUM(Profit), 2) AS Total_Profit
FROM superstore;


SELECT 
    Category,
    ROUND(SUM(Sales), 2) AS Total_Sales,
    COUNT(*) AS Total_Orders
FROM superstore
GROUP BY Category
ORDER BY Total_Sales DESC;


SELECT 
    Region,
    ROUND(SUM(Sales), 2) AS Total_Sales,
    COUNT(*) AS Total_Orders
FROM superstore
GROUP BY Region
ORDER BY Total_Sales DESC;


SELECT 
    YEAR(STR_TO_DATE('Order Date', '%m/%d/%Y')) AS Year,
    MONTH(STR_TO_DATE('Order Date', '%m/%d/%Y')) AS Month,
    ROUND(SUM(Sales), 2) AS Monthly_Sales
FROM superstore
GROUP BY Year, Month
ORDER BY Year, Month;


SELECT 
    'Product Name',
    ROUND(SUM(Sales), 2) AS Total_Sales,
    COUNT(*) AS Times_Ordered
FROM superstore
GROUP BY 'Product Name'
ORDER BY Total_Sales DESC
LIMIT 10;


SELECT 
    Segment,
    ROUND(SUM(Sales), 2) AS Total_Sales,
    COUNT(*) AS Total_Orders,
    ROUND(AVG(Sales), 2) AS Avg_Sale
FROM superstore
GROUP BY Segment
ORDER BY Total_Sales DESC;