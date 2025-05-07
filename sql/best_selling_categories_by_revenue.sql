-- Categories by Revenue and Quantities Sold 
SELECT
    c.category AS category,
    ROUND(SUM(o.order_revenue), 2) AS total_revenue,
    SUM(o.order_quantity) AS quantity_sales
FROM `AdventureWorks.orders` o
JOIN `AdventureWorks.products` p
    ON o.product_key = p.product_key
JOIN `AdventureWorks.subcategories` sc
    ON p.subcategory_key = sc.subcategory_key
JOIN `AdventureWorks.categories` c
    ON sc.category_key = c.category_key
GROUP BY category
ORDER BY total_revenue DESC