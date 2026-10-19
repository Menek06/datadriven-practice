











Select 
  DISTINCT
  u.username,
  t.total_amount
FROM users u
JOIN transactions t
  ON u.user_id = t.user_id
WHERE NOT EXISTS (
  SELECT 1
  FROM page_views pv
  WHERE pv.user_id = t.user_id
)
  AND t.transaction_date >= '2026-01-01' AND t.transaction_date <= '2026-12-31'
ORDER BY t.total_amount ASC
