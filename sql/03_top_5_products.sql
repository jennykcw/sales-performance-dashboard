-- Query 03: Top 5 Best-Selling Products
-- Identifies top 5 products and brands by total completed sales revenue

SELECT 
  p.name AS product_name, 
  p.brand AS product_brand,
  ROUND(SUM(oi.sale_price), 2) AS total_sales
FROM 
  `bigquery-public-data.thelook_ecommerce.products` AS p
JOIN
  `bigquery-public-data.thelook_ecommerce.order_items` AS oi
ON
  p.id = oi.product_id
WHERE
  oi.status = "Complete"
GROUP BY
  p.name,
  p.brand
ORDER BY
  total_sales DESC
LIMIT 
  5 