-- Sub-Categories by Revenue and Quantities Sold 
SELECT
    sc.subcategory AS subcategory,
    ROUND(SUM(o.order_revenue), 2) AS total_revenue,
    SUM(o.order_quantity) AS quantity_sales
FROM `AdventureWorks.orders` o
JOIN `AdventureWorks.products` p
    ON o.product_key = p.product_key
JOIN `AdventureWorks.subcategories` sc
    ON p.subcategory_key = sc.subcategory_key
GROUP BY subcategory
ORDER BY total_revenue DESC
LIMIT 10