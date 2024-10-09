{% snapshot SRC_SCD2_EX2 %}
    {{
        config(
            target_schema='DBT_ROHITHCHEEDELLA183',
            target_database='TRAINING',
            unique_key='coach_id',
            strategy='timestamp',
            updated_at='last_updated'
        )
    }}

    select * from {{ source('Source_SCD', 'SRC_SCD2') }}
 {% endsnapshot %}