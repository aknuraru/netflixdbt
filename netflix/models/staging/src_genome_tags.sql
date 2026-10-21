WITH raw_genome_tags AS(
    SELECT * FROM {{ source('netflix', 'raw_genome_tags') }}
)
SELECT 
    TAGID AS tag_id,
    TAG
FROM raw_genome_tags