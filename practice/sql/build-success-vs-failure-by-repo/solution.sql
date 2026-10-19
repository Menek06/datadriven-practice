Select
  repo_name,
  COUNT(CASE WHEN status = 'success' THEN status END) AS success_count,
  COUNT(CASE WHEN status = 'failure' THEN status END) AS failure_count,
  AVG(dur_secs) AS avg_duration
FROM ci_builds
GROUP BY repo_name
ORDER BY repo_name
