-- Query 02: Sales by Product Category
-- Calculates total sales revenue per product category, sorted highest to lowest

SELECT 
  p.category,
  ROUND(SUM(oi.sale_price),2) AS total_sales 
FROM 
  `bigquery-public-data.thelook_ecommerce.order_items` AS oi
JOIN
  `bigquery-public-data.thelook_ecommerce.products` AS p
ON
  oi.product_id = p.id
GROUP BY
  p.category
ORDER BY
  total_sales DESC