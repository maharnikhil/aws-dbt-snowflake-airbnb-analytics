{% macro discount(col,discount_value)%}
    {{col}} - ({{col}} * ({{discount_value}}/100))   
{% endmacro %}