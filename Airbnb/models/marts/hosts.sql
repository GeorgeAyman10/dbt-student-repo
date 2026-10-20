{{ config(materialized='incremental',
          incremental_strategy='merge',
          unique_key='id'
) 
}}

{% set starting_id = var('starting_id', '100000') %}

select *
from {{ ref('stg_hosts') }}
where id >= {{ starting_id }}