WITH raw_genome_scores AS(
    SELECT * FROM {{ source('netflix', 'raw_genome_scores') }}
)
SELECT 
    MOVIEID AS movie_id,
    TAGID AS tag_id,
    RELEVANCE
FROM raw_genome_scores