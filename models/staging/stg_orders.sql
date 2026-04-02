select
    cast(order_id as integer) as order_id,
    cast(customer_id as integer) as customer_id,
    cast(order_date as date) as order_date,
    cast(amount as double) as amount,
    
    case 
        when amount >= 150 then 'high_value'
        when amount >= 100 then 'medium_value'
        else 'low_value'
    end as order_value_category

from {{ ref('orders') }}
where amount is not null