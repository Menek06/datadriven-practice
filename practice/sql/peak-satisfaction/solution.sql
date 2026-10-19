SELECT
  department,
  MAX(metric_value) AS max_score,
  MIN(metric_value) AS min_score,
  COUNT(metric_name) AS measurement_count
FROM employee_metrics
WHERE metric_name = "satisfaction_score"
GROUP BY department
ORDER BY MAX(metric_value) DESC, department
limit 1
