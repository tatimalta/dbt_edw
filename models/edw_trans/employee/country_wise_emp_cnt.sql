{{
  config(
    materialization='table'
  )
}}

select
  {{ count_employees_by_country('country', 'EMP_ID') }}
from {{ ref('employee_data') }}