-- Query 07: Most loyal customers
-- Count customers with more than 1 purchases to identify repeat buyers

SELECT 
  user_id,
  COUNT(order_id) AS total_orders
FROM 
  `bigquery-public-data.thelook_ecommerce.orders` 
GROUP BY  
  user_id
HAVING
  COUNT(order_id) > 1
ORDER BY
  total_orders DESC
LIMIT 
  10