{{
config(
    materialization='table'
)

}}

select
* from {{source("customer_source",'customer')}}