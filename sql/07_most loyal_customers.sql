-- Query 07: Most loyal customers
-- Count customers with more than 1 purchases to identify repeat buyers

SELECT
  COUNT(DISTINCT(oi.order_id)) AS total_order,
  ROUND(SUM(oi.sale_price), 2) AS total_spend,
  u.id,
  u.first_name,
  u.last_name
FROM
  `bigquery-public-data.thelook_ecommerce.order_items` as oi
JOIN
  `bigquery-public-data.thelook_ecommerce.users` as u
ON
  oi.user_id = u.id
WHERE
  oi.status = "Complete"
GROUP BY
  u.id,
  u.first_name,
  u.last_name
HAVING
  COUNT(DISTINCT(oi.order_id)) > 1
ORDER BY
  total_order DESC,
  total_spend DESC
LIMIT
  10

