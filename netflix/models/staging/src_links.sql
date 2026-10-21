WITH raw_links AS(
    SELECT * FROM {{ source('netflix', 'raw_links') }}
)
SELECT 
    MOVIEID AS movieID,
    IMDBID AS IMDBId,
    TMDBID
FROM raw_links