


  SELECT
    user_id,
    COUNT(*) as total_views
  FROM page_views
  WHERE viewed_at BETWEEN '2026-11-28' AND '2026-12-28'
  GROUP BY user_id

  
