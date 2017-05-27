select customer_id
from payment
limit 10;

select customer_id
from payment
group by customer_id;


-- sem group by
select customer_id
from payment;



select customer_id , sum(amount)
from payment
group by customer_id;



select customer_id , sum(amount)
from payment
group by customer_id
order by sum(amount) desc;


--which staff id has more payments checked
select staff_id, count(payment_id) 
from payment
group by staff_id

--same way of the example above
select staff_id, count(*) 
from payment
group by staff_id

select * from film
limit 5

select rating, count(rating) 
from film
group by rating;

--check count of rental durations on film table
select rental_duration, count(rental_duration) 
from film
group by rental_duration;


select rating, AVG(rental_rate) 
from film
group by rating;






