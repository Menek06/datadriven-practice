SELECT
  svc_name,
  checked,
  latency,
  AVG(latency) OVER (
    partition by svc_name
    ORDER BY checked
    ROWS BETWEEN 6 PRECEDING AND CURRENT ROW
  ) as rolling_avg
FROM svc_health
