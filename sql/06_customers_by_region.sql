-- Query 06: Customers by Country and State
-- Counts distinct customers per region who have made at least one purchase

ELECT 
  COUNT(DISTINCT(u.id)) AS unique_customers, 
  u.state, 
  u.country 
FROM 
  `bigquery-public-data.thelook_ecommerce.users` AS u
JOIN
  `bigquery-public-data.thelook_ecommerce.order_items` as oi
ON
  u.id = oi.user_id
WHERE
  oi.status = "Complete"
GROUP BY
  u.state,
  u.country
ORDER BY
  unique_customers DESC