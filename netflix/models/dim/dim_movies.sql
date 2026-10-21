WITH src_movies AS(
    SELECT * FROM {{ ref('src_movies') }}
)
SELECT 
    MOVIE_ID AS movie_id,
    INITCAP(TRIM(TITLE)) AS title,
    SPLIT(GENRES,'|') AS genre_array,
    GENRES
FROM src_movies