{{ config(materialized="table") }}

select
    product_id,
    product_name,
    month_year,
    sum(quantity * unit_price) as sales,
    sum(quantity) as total_quantity,
    sum(unit_price) as unit_Price

from {{ source("Source_SCD", "product_sales") }}
group by product_id, product_name, month_year
