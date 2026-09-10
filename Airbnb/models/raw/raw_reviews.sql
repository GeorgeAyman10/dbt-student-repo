{{ config(materialized='view') }}

select *
from {{ source('raw_airbnb', 'raw_reviews') }}