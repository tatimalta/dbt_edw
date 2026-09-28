{% macro count_employees_by_country(country_column, employee_id_column) %}

    {# Define the list of countries #}
    {% set country_list = ['UK', 'USA', 'India'] %}

    {# Generate conditional employee counts for each country #}
    {% for country in country_list %}

        count(
            case 
                when {{ country_column }} = '{{ country }}' 
                then {{ employee_id_column }}
            end
        ) as emp_count_{{ country | replace(' ', '_') | lower }}

        {% if not loop.last %},{% endif %}

    {% endfor %}

{% endmacro %}