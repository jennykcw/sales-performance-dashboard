-- Query 01: Total Sales Revenue
-- Calculates the overall revenue from all order_items

SELECT 
  ROUND(SUM(sale_price), 2) AS total_sales_revenue 
FROM 
  `bigquery-public-data.thelook_ecommerce.order_items` 
WHERE
   status = "Complete"