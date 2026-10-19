












Select 
  svc_name,
  checked,
  uptime
FROM svc_health
WHERE uptime < 95.0
ORDER BY uptime 
