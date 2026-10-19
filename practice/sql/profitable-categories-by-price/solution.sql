







Select
  category,
  MIN(price) as min_price,
  AVG(rating) AS avg_rating
FROM products
GROUP BY category
ORDER BY MIN(price) 
