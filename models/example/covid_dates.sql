
{{ config(materialized = 'incremental')}}

SELECT
  *
FROM
  `covid-assistant.covid.india_covid`
WHERE
  last_updated <= current_date


{% if is_incremental() %}
    and last_updated > (select max(last_updated) from {{ this }})
{% endif %}