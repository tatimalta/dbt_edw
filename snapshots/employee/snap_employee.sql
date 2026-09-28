{% snapshot snap_employee %}

{{
    config(
        target_schema='employee',
        unique_key='emp_id',
        strategy='timestamp',
        updated_at='created_date'
    )
}}

select * 
from {{ source('employee_source', 'emp') }}
{% endsnapshot %}