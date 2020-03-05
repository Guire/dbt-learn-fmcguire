select ID payment_id, "orderID" order_id, "paymentMethod" payment_method, amount, CREATED order_date
from {{ source('stripe', 'payment')}}