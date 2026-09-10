{{ config(materialized='ephemeral') }}

select *
from {{ ref('raw_listings') }}
where room_type ='Private room'