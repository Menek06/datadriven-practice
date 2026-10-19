



Select
  page_url,
  COUNT(*) AS appearance_count
FROM
(Select
  page_url,
  ROW_NUMBER() OVER(PARTITION BY user_id ORDER BY viewed_at ASC) as rn
FROM page_views)
WHERE rn IN (1, 2, 3)
GROUP BY page_url
having COUNT(*) > 3
