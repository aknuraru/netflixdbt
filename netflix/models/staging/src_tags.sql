{{
  config(
    materialized = 'table',
  )
}}
WITH raw_tags AS(
    SELECT * FROM {{ source('netflix', 'raw_tags') }}
)
SELECT 
    USERID AS user_id,
    MOVIEID AS movieID,
    TAG AS tag,
    TO_TIMESTAMP_LTZ(timestamp) as rating_timestamp
FROM raw_tags