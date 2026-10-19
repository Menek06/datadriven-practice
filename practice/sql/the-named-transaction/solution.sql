









Select
  t.transaction_id,
  t.user_id,
  t.product_id,
  t.quantity,
  t.transaction_date,
  p.product_name
FROM transactions t
INNER JOIN products p
  ON t.product_id = p.product_id
