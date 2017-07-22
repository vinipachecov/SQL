

select * from payment;

select extract(day from payment_date)  
from payment;

select customer_id, extract(day from payment_date) as day  
from payment;

-- getting month payment

select sum(payment.amount),  extract(month from payment_date) as month  
from payment
group by month
order by sum(amount) desc ;

select sum(payment.amount) as total,  extract(month from payment_date) as month  
from payment
group by month
order by total desc  limit 1;


