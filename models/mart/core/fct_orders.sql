with orders as (select * from {{ref('stg_orders')}}),
payments as (select * from {{ref('stg_payments')}})

select
order_date,
orders.order_id,
orders.customer_id,
amount
from orders
left join payments on order_id = orderid