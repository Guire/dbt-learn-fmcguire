select stg_orders.order_id, stg_orders.customer_id, SUM(stg_payments.amount) as amount
from {{ ref('stg_payments')}}
inner join {{ ref('stg_orders') }} using(order_id)
group by 1, 2