{{ config(materialized="table") }}
with
    cte1 as (
        select
            t.name as teamname,
            s.year as years,
            sum(s.g) as No_of_Goals,
            row_number() over (partition by s.year order by 1) as rank_1
        from {{ source("SRC_Hockey", "TEAMS") }} t
        left join {{ source("SRC_Hockey", "SCORING") }} s on t.tmid = s.tmid
        where s.year = 2011
        group by s.year, t.name

    )
select teamname, years, No_of_Goals
from cte1
where rank_1 <= 5
