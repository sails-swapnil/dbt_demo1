
{{ config(materialized = 'incremental')}}

SELECT
    {{rename_segments('state')}} state_adjusted,
    confirmed,
    recovered,
    deaths
FROM
  {{ source('sample_covid', 'india_covid') }}
WHERE
  last_updated <= current_date


{% if is_incremental() %}
    and last_updated > (select max(last_updated) from {{ this }})
{% endif %}