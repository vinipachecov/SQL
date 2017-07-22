select * from customer;

select * from payment;

select customer.customer_id,
customer.first_name,
customer.last_name,
customer.email,
payment.amount,
payment.payment_date
from customer
inner join payment on payment.customer_id = customer.customer_id
where customer.customer_id = 2;

--Don't have to specify the table in the where clause because there is only one first_name column
-- and sql knows where it is from.

select customer.customer_id,
customer.first_name,
customer.last_name,
customer.email,
payment.amount,
payment.payment_date
from customer
inner join payment on payment.customer_id = customer.customer_id
where first_name like 'A%';


select payment_id, amount, first_name, last_name
from payment
join staff on payment.staff_id = staff.staff_id;

select * from inventory limit 5;

select * from film limit 5;

select title, count(title) from inventory
inner join film on inventory.film_id = film.film_id
where store_id = 1
group by title;

select title, count(title) as copies_at_store1 from inventory
inner join film on inventory.film_id = film.film_id
where store_id = 1
group by title
order by title

select * from film limit 2;

select * from language;

--Title of the movie and the language that is in it

select film.title, language."name" as movie_language from film
inner join language on language.language_id = film.language_id;

--more common sql query

select film.title, "name" movie_language
from film
join language as lan on lan.language_id = film.language_id;

select film.title, "name" as movie_language
from film
join language as lan on lan.language_id = film.language_id;


