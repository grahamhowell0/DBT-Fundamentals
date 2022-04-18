with payments as (
    select
    orderid,
    status,
    amount/100 as amount,
    cast(created as date) as created
    from analytics.stripe.payments
)

select * from payments