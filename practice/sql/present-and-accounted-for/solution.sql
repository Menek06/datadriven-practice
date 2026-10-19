SELECT
  p.product_name,
  COALESCE(SUM(
      CASE 
        WHEN p.category = 'Electronics' THEN t.total_amount END),  0) AS electronics_total
FROM products AS p
LEFT JOIN transactions AS t
  ON p.product_id = t.product_id
GROUP BY p.product_id, p.product_name
ORDER BY electronics_total DESC, p.product_name
