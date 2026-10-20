{{ config(materialized='incremental',
          incremental_strategy='append',
          unique_key='id'
) 
}}

select *
from {{ ref('stg_listings') }}
where id >= {{ var('load_from_id') }}