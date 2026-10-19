






WITH ranking AS (
  SELECT
    repo_name,
    SUM(added) AS total_added,
    DENSE_RANK() OVER(ORDER BY SUM(added) DESC) as rank
  FROM repo_commits
  GROUP BY 1
)

Select
  repo_name,
  total_added,
  rank
FROM ranking
