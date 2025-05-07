-- Overview on Sales by Region
SELECT
    t.country AS country,
    t.region AS region,
    COUNT(o.order_number) AS order_count,
    SUM(o.order_quantity) AS sales_quantity,
    ROUND(SUM(o.order_cost), 2) AS total_sales_cost,
    ROUND(SUM(o.order_price), 2) AS total_sales,
    ROUND(SUM(o.order_revenue), 2) AS total_revenue
FROM `AdventureWorks.orders` o
JOIN `AdventureWorks.territories` t
    ON o.territory_key = t.territory_key
GROUP BY
    t.country,
    t.region
ORDER BY total_sales DESC