-- Top 10 Product Sales and Quantities Sold 
SELECT
    product,
    ROUND(SUM(order_price), 2) AS total_sales,
    SUM(order_quantity) AS quantity_sales
FROM `AdventureWorks.orders`
GROUP BY product
ORDER BY total_sales DESC
LIMIT 10