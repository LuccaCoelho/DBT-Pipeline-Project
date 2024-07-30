SELECT 
    *
FROM
    {{ ref('fct_orders')}}
WHERE
    DATE(order_date) > CURRENT_DATE()
    or DATE(order_date) < DATE('1990-01-01')