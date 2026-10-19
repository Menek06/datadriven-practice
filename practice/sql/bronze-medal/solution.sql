WITH rank AS (
  SELECT

    amount,
    DENSE_RANK() OVER(ORDER BY amount DESC) as rn
  FROM cloud_costs
)

SELECT
  amount
FROM rank
WHERE rn = 3
LIMIT 1
