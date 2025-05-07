-- Top 10 Product Revenue and Quantities Sold 
SELECT
    product,
    ROUND(SUM(order_revenue), 2) AS total_revenue,
    SUM(order_quantity) AS quantity_sales
FROM `AdventureWorks.orders`
GROUP BY product
ORDER BY total_revenue DESC
LIMIT 10