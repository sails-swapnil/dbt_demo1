
{{ config(materialized='view') }}

SELECT
  *
FROM
  `bigquery-public-data.usa_names.usa_1910_2013`
LIMIT
    1000
