-- Top 10 Most Frequent Customers
-- Orders Sales and Revenue by Customer
SELECT
    CONCAT(c.first_name, ' ', c.last_name) AS customer_name,
    s.customer_key AS customer_key,
    COUNT(o.order_number) AS order_count,
    SUM(o.order_quantity) AS sales_quantity,
    ROUND(SUM(o.order_price), 2) AS total_sales,
    ROUND(SUM(o.order_revenue), 2) AS total_revenue
FROM `AdventureWorks.sales` s
JOIN `AdventureWorks.customers` c
    ON s.customer_key = c.customer_key
JOIN `AdventureWorks.orders` o
    ON s.order_number = o.order_number
GROUP BY
    s.customer_key,
    customer_name
ORDER BY order_count DESC
