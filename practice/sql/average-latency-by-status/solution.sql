




Select
  status,
  AVG(latency) as avg_latency
FROM api_calls
GROUP BY status
ORDER BY status
