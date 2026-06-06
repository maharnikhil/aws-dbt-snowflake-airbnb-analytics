{% set cols = ['BOOKING_ID', 'BOOKING_AMOUNT', 'NIGHTS_BOOKED'] %}

SELECT 
{% for col in cols %}
    {{ col }}
        {% if not loop.last %}, {% else %}
        {% endif %}
{% endfor %}

FROM {{ ref('bronze_bookings') }}
