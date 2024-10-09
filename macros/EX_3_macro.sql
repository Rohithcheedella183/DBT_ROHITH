{% macro get_tablename(databse,schema,tablename) %}

select * from {{databse}}.{{schema}}.{{tablename}}
{% endmacro %}