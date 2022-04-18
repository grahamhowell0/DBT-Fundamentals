with orders as (

    select
        id as order_id,
        user_id as customer_id,
        order_date,
        status

    from analytics.jaffle_shop.orders_csv

),

customer_orders as (

    select
        customer_id,

        min(order_date) as first_order_date,
        max(order_date) as most_recent_order_date,
        count(order_id) as number_of_orders

    from orders

    group by 1

)

select * from orders