{{
    config(
        materialized='table'
    )
}}

select * from  {{ source('SRC_Hockey', 'SCORING') }}

