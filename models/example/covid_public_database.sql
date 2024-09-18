{{ config(materialized='table') }}

SELECT
  county_fips_code,
  county_name,
  state_name
FROM
  {{ source('sample', 'county_14d')}}
{{ group_by(3) }}