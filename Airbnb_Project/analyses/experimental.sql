SELECT 
    TOTAL_AMOUNT,
    {{ discount('TOTAL_AMOUNT' , 10) }}AS DISCOUNTED_AMOUNT


FROM
 {{ ref('silver_bookings') }}
