-- How many payment transactions were greater than $5.00?

select count (payment_id) 
from payment
where amount > 5.00;

--How many actors have a first name that starts with the letter P?

select count (actor_id)
from actor
where first_name like 'P%'


-- How many unique districts are our customers from?

select count  (distinct district) from address;


-- retrieve the list of names for those distinct districts from the previous question

select  distinct district from address;

-- How many films have a rating of R and a replacement cost between $5 and $15?

select count (film_id) 
from film 
where rating = 'R' and replacement_cost between 5 and 15;

--How many films have the word Truman somewhere in the title?

select count (film_id) 
from film
where title like '%Truman%';
