{{
    config(
        materialized="incremental",
        unique_key=['COACHID', 'YEAR']
    )
}}

select
    *
  
from {{ source("SRC_Hockey", "Coaches") }}
