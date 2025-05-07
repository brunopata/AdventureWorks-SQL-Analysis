-- Overview on Sales by Month
SELECT
    FORMAT_DATE('%m-%Y', order_date) AS month,
    SUM(order_quantity) AS sales_quantity,
    ROUND(SUM(order_cost), 2) AS total_sales_cost,
    ROUND(SUM(order_price), 2) AS total_sales,
    ROUND(SUM(order_revenue), 2) AS total_revenue
FROM `AdventureWorks.orders`
GROUP BY month
ORDER BY PARSE_DATE('%m-%Y', month) ASC