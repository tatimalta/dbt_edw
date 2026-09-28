{{ config(materialization="table") }}

select 
    EMP_ID,
    ENAME,
    ADDRESS,
    STATE,
    COUNTRY,
    ZIP,
    CREATED_DATE,
    DBT_SCD_ID,
    DBT_UPDATED_AT,
    DBT_VALID_FROM,
    coalesce(DBT_VALID_TO, '9999-12-31'::date) as DBT_VALID_TO,
    case 
        when DBT_VALID_TO is null then 'Y'
        else 'N' 
    end as current_record_flag
from {{ ref('snap_employee') }}