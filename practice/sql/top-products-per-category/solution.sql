





SELECT
  category,
  product_name,
  total_sales
FROM (
SELECT
    p.category,
    p.product_name,
    SUM(t.total_amount) AS total_sales,
    ROW_NUMBER() OVER(PARTITION BY p.category ORDER BY SUM(t.quantity * t.total_amount) DESC) as rn
FROM products p
JOIN transactions t
  ON p.product_id = t.product_id
GROUP BY 1, 2
)
WHERE rn < 6
