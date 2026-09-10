{{ config(materialized='incremental') }}

select list.*, dest.destination
from {{ ref('stg_listings') }} list
inner join {{ ref('stg_room_destination') }} dest
on list.room_type = dest.room_type