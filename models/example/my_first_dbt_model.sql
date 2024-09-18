
/*
    Welcome to your first dbt model!
    Did you know that you can also configure models directly within SQL files?
    This will override configurations stated in dbt_project.yml

    Try changing "table" to "view" below
*/

{{ 
    config(
        materialized = 'table', 
        alias = 'first_model', 
        schema = 'swapnil_test',
    ) 
}}



with source_data as (
    select 1 as id, 'NY' as state, CAST('2024-01-01 00:00:00.000' AS timestamp) as updated_at 
    union all
    select null as id, 'CT' as state, CAST('2024-01-01 00:00:00.000' AS timestamp) as updated_at 
    union all
    select 3 as id, 'VT' as state, CAST('2024-01-01 00:00:00.000' AS timestamp) as updated_at 
)

select *
from source_data
-- where id is not null
