select
    c.customer_id,
    c.customer_name,
    count(o.order_id) as total_orders,
    sum(o.amount) as total_revenue,
    avg(o.amount) as avg_order_value,

    sum(case when o.order_value_category = 'high_value' then 1 else 0 end) as high_value_orders

from {{ ref('stg_orders') }} o
left join {{ ref('stg_customers') }} c
    on o.customer_id = c.customer_id
group by
    c.customer_id,
    c.customer_name