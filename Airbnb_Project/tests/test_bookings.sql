SELECT
    *
FROM
    {{source('staging','bookings')}}

WHERE
    BOOKING_AMOUNT <= 0 AND BOOKING_STATUS = 'confirmed'