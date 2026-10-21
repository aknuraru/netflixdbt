with fct_movies as(
    select * from {{ref('dim_movies_with_tags')}}
)
select * from fct_movies