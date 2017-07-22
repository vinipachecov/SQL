-- Joins 

select * from film limit 5;

select * from inventory limit 5;

select film.film_id, film.title,  inventory.inventory_id
from film
left outer join inventory on inventory.film_id = film.film_id;


select film.film_id, film.title,  inventory.inventory_id
from film
left outer join inventory on inventory.film_id = film.film_id
where inventory.film_id is null
order by film.film_id;


select film.film_id, film.title,  inventory.inventory_id
from film
left outer join inventory on inventory.film_id = film.film_id


-- with inventory ID beign null
select film.film_id, film.title,  inventory.inventory_id
from film
left outer join inventory on inventory.film_id = film.film_id
where inventory_id is null

select  first_name, customer.customer_id, rental.rental_date
from customer
left outer join rental on rental.customer_id = customer.customer_id




