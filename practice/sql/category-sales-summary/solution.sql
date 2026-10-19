SELECT
  category,
  COUNT(DISTINCT 
    transaction_id
    ) AS unique_transactions,
  SUM(total_amount) AS total_revenue
FROM transactions AS t
INNER JOIN products AS p
  ON t.product_id = p.product_id
WHERE transaction_date >= '2026-01-01'
AND transaction_date < '2027-01-01'
GROUP BY 1
HAVING COUNT(*) > 0
ORDER BY SUM(total_amount) DESC
