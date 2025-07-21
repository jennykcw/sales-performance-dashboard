-- Query 01: Total Sales Revenue
-- Calculates the overall revenue from all order_items

SELECT 
  SUM(sale_price) AS total_sales_revenue 
FROM 
  `bigquery-public-data.thelook_ecommerce.order_items` 