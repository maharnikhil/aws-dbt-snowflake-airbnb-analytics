SELECT
    *
FROM
    {{source('staging','listings')}}

WHERE
    PRICE_PER_NIGHT <= 0