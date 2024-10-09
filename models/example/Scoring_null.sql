{{ config(materialized="table") }}

select
    coalesce(playerid, 'UNK') as playerid,
    coalesce(year, '1900') as years,
    coalesce(pos, 'UNK') as pos,
    coalesce(gp, 0) as gp
from {{ source("SRC_Hockey", "SCORING") }}
