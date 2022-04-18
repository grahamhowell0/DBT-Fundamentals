with payments as (
    select
    orderid,
    status,
    amount,
    cast(created as date) as created
    from analytics.stripe.payments
)

select * from payments