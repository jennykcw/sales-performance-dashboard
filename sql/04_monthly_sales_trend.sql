-- Query 04: Monthly Sales Trend
-- Calculates total revenue grouped by year and month

SELECT 
  FORMAT_TIMESTAMP('%Y-%m', created_at) AS year_month,
  ROUND(SUM(sale_price), 2) AS total_sales
FROM 
  `bigquery-public-data.thelook_ecommerce.order_items` 
GROUP BY
  FORMAT_TIMESTAMP('%Y-%m', created_at)
ORDER BY
  year_month 