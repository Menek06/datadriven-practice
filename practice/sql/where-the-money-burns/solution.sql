WITH asd AS(
SELECT
  DISTINCT
  svc_name, 
  AVG(amount) OVER(PARTITION BY svc_name) AS avg_per_provider,
  AVG(amount) OVER() AS avg_total
FROM cloud_costs
)


SELECT
  svc_name
FROM asd
WHERE avg_per_provider > avg_total
ORDER BY svc_name ASC
