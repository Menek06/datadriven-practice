Select
  os_name,
  COUNT(session_id) AS session_count
FROM user_sessions us
JOIN devices d
  ON us.device_id = d.device_id
  WHERE device_type = 'mobile'
GROUP BY os_name
