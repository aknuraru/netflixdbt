{{
    config(
        materialized = 'ephemeral'
    )
}}

WITH movies AS (
    SELECT * FROM {{ ref("dim_movies") }}
),
scores AS (
    SELECT * FROM {{ ref("fct_genome_scores") }}
)

SELECT
    m.movie_id,
    m.title,
    m.GENRES,
    s.relevance_score
FROM movies m
LEFT JOIN scores s ON m.movie_id = s.movie_id
