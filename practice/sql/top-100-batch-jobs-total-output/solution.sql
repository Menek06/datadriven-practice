



WITH ranking AS (
  Select
    rows_done,
    DENSE_RANK() OVER(ORDER BY rows_done) as dr
  FROM batch_jobs
)

Select
  SUM(rows_done) AS total_rows
FROM ranking 
WHERE dr <= 100
