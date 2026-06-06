SELECT
    *
FROM
    {{source('staging','hosts')}}

WHERE
    RESPONSE_RATE <= 0