{% snapshot TGT_SCD2_check %}
    {{
        config(
            target_schema='DBT_ROHITHCHEEDELLA183',
            target_database='TRAINING',
            unique_key='PLAYERID',
            strategy='check',
            check_cols=['HEIGHT']
        )
    }}

    select * from {{ source('SRC_Hockey', 'Master') }}
 {% endsnapshot %}