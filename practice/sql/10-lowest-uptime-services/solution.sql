SELECT
  svc_name,
  uptime AS min_uptime
FROM (
  SELECT
    svc_name,
    uptime,
    ROW_NUMBER() OVER (
      PARTITION BY svc_name
      ORDER BY uptime
    ) AS drn
  FROM svc_health
  WHERE uptime IS NOT NULL
)
WHERE drn = 1
ORDER BY min_uptime
LIMIT 10
