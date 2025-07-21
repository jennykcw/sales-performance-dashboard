-- Query 03: Top 5 Best-Selling Products
-- Returns top 5 products by total sales revenue

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
GROUP BY
  p.name,
  p.brand
ORDER BY
  total_sales DESC
LIMIT 
  5 