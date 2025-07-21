-- Query 05: Unique Customers
-- Counts how many distinct customers made purchases

SELECT 
  COUNT(DISTINCT(user_id)) AS unique_customers 
FROM 
  `bigquery-public-data.thelook_ecommerce.order_items` 