-- Count of rows per table
SELECT 'products' AS table_name, COUNT(*) AS row_count
FROM `AdventureWorks.products`
UNION ALL
SELECT 'sales' AS table_name, COUNT(*) AS row_count
FROM `AdventureWorks.sales`
UNION ALL
SELECT 'customers' AS table_name, COUNT(*) AS row_count
FROM `AdventureWorks.customers`