WITH src_tags AS (
    SELECT * FROM {{ ref('src_genome_tags') }}
)

SELECT
    TAG_ID,
    INITCAP(TRIM(TAG)) AS tag_name
FROM src_tags