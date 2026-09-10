{{ config(materialized='table') }}

select *
from {{ ref('raw_room_destination') }}