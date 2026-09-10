{{ config(materialized='table') }}

select *
from {{ ref('raw_listings') }}
where room_type ='Private room'