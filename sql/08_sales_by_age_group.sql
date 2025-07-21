-- Query 08: Sales by Age Group
-- Summarizes total sales by customer age to analyze age-based buying trends

SELECT 
  u.age,
  ROUND(SUM(oi.sale_price), 2) AS total_sales 
FROM 
  `bigquery-public-data.thelook_ecommerce.users` AS u
JOIN
  `bigquery-public-data.thelook_ecommerce.order_items` AS oi
ON
  u.id = oi.user_id
WHERE
  oi.status = "Complete"
GROUP BY
  u.age
ORDER BY
  total_sales DESC