select
    c.customer_id,
    c.customer_name,
    sum(o.amount) as total_revenue,
    count(o.order_id) as total_orders
from {{ ref('stg_orders') }} o
left join {{ ref('stg_customers') }} c
    on o.customer_id = c.customer_id
group by
    c.customer_id,
    c.customer_name