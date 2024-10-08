SELECT 
    sum(case when id is null then 1 else 0 end) / count(*) as total_nulls

FROM 
    {{ ref('my_first_dbt_model') }}

HAVING 
    sum(case when id is null then 1 else 0 end) / count(*) > 0.4