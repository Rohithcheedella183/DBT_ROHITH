{{
    config(
        materialized='view'
    )
}}

select * from  {{ source('SRC_Hockey', 'SCORINGSC') }}

