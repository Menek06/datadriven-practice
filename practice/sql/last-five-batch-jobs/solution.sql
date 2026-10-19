











WITH recent_five AS (
Select
  job_id,
  job_name,
  status,
  rows_done,
  started,
  ended,
  priority,
  retries,
  ROW_NUMBER() OVER(ORDER BY job_id DESC) as rn
FROM batch_jobs
)
Select
    job_id,
      job_name,
  status,
  rows_done,
  started,
  ended,
  priority,
  retries
FROM recent_five
WHERE rn <= 5
    
