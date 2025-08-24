-- Query 08: Sales by Age Group
-- Summarizes total sales by customer age to analyze age-based buying trends

SELECT
  CASE
    WHEN u.age BETWEEN 18 AND 25 THEN "18-25"
    WHEN u.age BETWEEN 26 AND 35 THEN "26-35"
    WHEN u.age BETWEEN 36 AND 45 THEN "36-45"
    WHEN u.age BETWEEN 46 AND 55 THEN "46-55"
    WHEN u.age >= 56 THEN "56+"
    ELSE "Unknown"
  END AS age_group,
  COUNT(DISTINCT(u.id)) AS total_customers,
  ROUND(SUM(oi.sale_price), 2) AS total_sales
FROM
  `bigquery-public-data.thelook_ecommerce.order_items` as oi
JOIN
  `bigquery-public-data.thelook_ecommerce.users` as u
ON
  oi.user_id = u.id
WHERE
  oi.status = "Complete"
GROUP BY
  age_group
ORDER BY
  total_customers DESC,
  total_sales DESC