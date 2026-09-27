{{
config(
    materialization='view'
)
}}

select
* from {{ref("employee_data")}}