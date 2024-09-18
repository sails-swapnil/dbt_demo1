{% macro rename_segments(column_name) %}
    CASE
        WHEN {{ column_name }} in (
            'Tripura',
            'Nagaland',
            'Punjab**',
            'Jharkhand',
            'Karnataka',
            'Kerala***',
            'Meghalaya',
            'Nagaland#',
            'Rajasthan',
            'Telangana',
            'Telengana',
            'Chandigarh',
            'Haryana***',
            'Jharkhand#',
            'Karanataka',
            'Puducherry',
            'Tamil Nadu',
            'Daman & Diu',
            'Lakshadweep',
            'Maharashtra',
            'Uttarakhand',
            'West Bengal',
            'Chhattisgarh',
            'Telangana**'
            )
            THEN 'segment_1'
        ELSE 'segment_2'
    END 
{% endmacro %}



