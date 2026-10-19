







WITH ranking AS (
  Select
    job_name,
    SUM(rows_done) as sum,
    DENSE_RANK() OVER(ORDER BY SUM(rows_done) DESC, job_name ASC) as rnk
  FROM batch_jobs
  GROUP BY 1
)

Select
  job_name, rnk
FROM ranking
LIMIT 10
