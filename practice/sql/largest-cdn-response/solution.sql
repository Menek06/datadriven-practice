






Select
  log_id,
  edge_loc,
  req_path,
  status,
  bytes,
  cache_hit,
  served_at
FROM cdn_logs
WHERE bytes = (Select max(bytes) FROM cdn_logs)
LIMIT 1
