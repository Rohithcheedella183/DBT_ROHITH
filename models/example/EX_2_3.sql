{{
    config(
        materialized='ephemeral'
    )
}}

select * from {{ ref('EX_1_2') }}