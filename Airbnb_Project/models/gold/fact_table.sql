{% set configs = 
[
{


'table': ref('one_big_table'),
'columns': 'one_big_table.BOOKING_ID,one_big_table.HOST_ID,one_big_table.LISTING_ID,one_big_table.TOTAL_AMOUNT,one_big_table.ACCOMMODATES,one_big_table.BATHROOMS,one_big_table.BEDROOMS,one_big_table.PRICE_PER_NIGHT,one_big_table.RESPONSE_RATE',
'alias': "one_big_table"


}
]
%}

SELECT
    {{ configs[0]['columns'] }}
    
FROM
    {{ configs[0]['table'] }}
