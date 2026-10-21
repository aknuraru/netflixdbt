WITH ratings_summary AS (
  SELECT
    movieID,
    AVG(rating) AS average_rating,
    COUNT(*) AS total_ratings
  FROM {{ ref('fct_ratings') }}
  GROUP BY movieID
  HAVING COUNT(*) > 100 -- Only movies with at least 100 ratings
)
SELECT
  m.title,
  rs.average_rating,
  rs.total_ratings
FROM ratings_summary rs
JOIN {{ ref('dim_movies') }} m ON m.movie_id = rs.movieID
ORDER BY rs.average_rating DESC
LIMIT 20;