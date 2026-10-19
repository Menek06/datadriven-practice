







Select
  user_id,
  COUNT(*) AS call_count
FROM api_calls
GROUP BY user_id
ORDER BY COUNT(*) DESC
LIMIT 1
