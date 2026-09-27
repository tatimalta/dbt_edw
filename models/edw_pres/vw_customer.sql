{{
    config(
        materialization='view'
    )
}}
select * from {{ref("customer_data")}}