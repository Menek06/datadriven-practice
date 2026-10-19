




Select
   reviewer,
   COUNT(review_id) AS reviews_count
FROM code_reviews
GROUP BY reviewer
