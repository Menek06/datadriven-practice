


Select
  mdl_name,
  accuracy
FROM (
Select
  distinct
  mdl_name,
  accuracy,
  RANK() OVER(ORDER BY accuracy DESC) as r
FROM ml_models
ORDER BY mdl_name
)
where r = 1
