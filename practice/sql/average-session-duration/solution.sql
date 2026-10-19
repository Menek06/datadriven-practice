


Select
  user_id,
  SUM(session_duration_sec)::decimal / COUNT(session_start)::decimal as avg_session_duration
FROM user_sessions
WHERE session_duration_sec IS NOT NULL
GROUP BY 1
