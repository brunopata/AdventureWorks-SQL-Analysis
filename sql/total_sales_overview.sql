-- Cost, Price & Revenue by Order
CREATE VIEW `AdventureWorks.orders` AS
SELECT
    s.order_date,
    s.order_number,
    s.territory_key,
    s.product_key,
    s.order_quantity,
    p.product,
    ROUND(p.cost, 2) AS product_cost,
    ROUND(p.price, 2) AS product_price,
    ROUND((s.order_quantity * p.cost), 2) AS order_cost,
    ROUND((s.order_quantity * p.price), 2) AS order_price,
    ROUND((s.order_quantity * p.price) - (s.order_quantity * p.cost), 2) AS order_revenue
FROM `AdventureWorks.sales` s
JOIN `AdventureWorks.products` p
    ON s.product_key = p.product_key