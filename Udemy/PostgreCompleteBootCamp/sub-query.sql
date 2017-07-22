--Suppose we want to find the films whose rental rate is higher than the average rental rate.

-- We can do it in two steps:
-- Find the average rate by using the select statement and average function (Avg)
-- Use the result of the first result of the first query in the second select statement 
-- to find  the films that we want


-- check the film table

select * from film limit 5;

-- Using 2 queries

-- find average rental  rante;

select AVG(rental_rate) from film;
-- get 2.98 result


select title, rental_rate from film
where rental_rate > 2.98;


--using in just one query + subquery

select film_id, rental_rate from film
where
rental_rate > (select avg(rental_rate) from film);

-- expĺoring rental table

select * from rental limit 5;

-- match inventory id with another table that has it

select * from inventory limit 5;

select inventory.film_id 
from rental
inner join inventory on inventory.inventory_id = rental.inventory_id
where 
rental.return_date between '2005-05-29' and '2005-05-30';

--using it as a subquery

select film_id,title from film
where film_id in 

(select inventory.film_id 
from rental
inner join inventory on inventory.inventory_id = rental.inventory_id
where 
rental.return_date between '2005-05-29' and '2005-05-30')



-- 

