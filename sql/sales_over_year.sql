-- Overview on Sales by Year
SELECT
    EXTRACT(YEAR FROM order_date) AS year,
    SUM(order_quantity) AS sales_quantity,
    ROUND(SUM(order_cost), 2) AS total_sales_cost,
    ROUND(SUM(order_price), 2) AS total_sales,
    ROUND(SUM(order_revenue), 2) AS total_revenue
FROM `AdventureWorks.orders`
GROUP BY year
ORDER BY year ASC