{{
  config(
    materialized = 'table',
  )
}}
WITH raw_ratings AS(
    SELECT * FROM {{ source('netflix', 'raw_ratings') }}
)
SELECT 
    USERID AS user_id,
    MOVIEID AS movieID,
    RATING AS rating,
    TO_TIMESTAMP_LTZ(timestamp) as rating_timestamp
FROM raw_ratings