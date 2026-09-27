{{ config(materialization="table") }}
select * from {{ source('employee_source', 'emp') }}


