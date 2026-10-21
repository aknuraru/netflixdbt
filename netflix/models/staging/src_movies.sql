WITH raw_movies AS(
    SELECT * FROM {{ source('netflix', 'raw_movies') }}
)
SELECT 
    c1 AS movie_id,
    c2 AS title,
    c3 AS genres
FROM raw_movies