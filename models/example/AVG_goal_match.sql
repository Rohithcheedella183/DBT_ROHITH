{{ config(materialized="table") }}

select t.name as teamname, avg(s.g) as no_of_goals

from {{ source("SRC_Hockey", "TEAMS") }} t
left join {{ source("SRC_Hockey", "SCORING") }} s on t.tmid = s.tmid

group by t.name
