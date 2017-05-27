select * from actor;


select * from payment;

select count (*) from payment;

select count (distinct amount) from payment;


--using limit
select * from customer limit 5;

select first_name from customer order by first_name; 

select * from customer;

select first_name, last_name from customer order by first_name ASC;

select first_name, last_name from customer order by first_name DESC;

select first_name, last_name from customer order by last_name DESC;

--SObrenome Torres vem depois de Knott****
select first_name, last_name from customer order by first_name asc, last_name DESC;


--Ordenando valores por um atributo que não está sendo selecionado
select first_name from customer order by last_name;

-- Get the customer ID numbers for the top 10 highest payment amounts
-- check the table
select * from payment;
-- final query
select customer_id, amount from payment order by amount desc limit 10;


-- Get the titles of the movies with film ids 1-5
-- check table
select *  from film;

select title,film_id  from film order by film_id asc limit 5;


select customer_id,amount from payment where amount between 8 and 9;

select customer_id,amount from payment where amount not between 8 and 9;

select amount,payment_date from payment where payment_date between '2007-02-07' and '2007-02-15';

select amount,payment_date from payment where payment_date not between '2007-02-07' and '2007-02-15';


select * from rental limit 1;

select customer_id, rental_id , rental_date from rental
where customer_id in (1,2)
order by return_date desc;

select customer_id, rental_id , rental_date from rental
where customer_id not in (1,2)
order by return_date desc;

select customer_id, rental_id , rental_date from rental
where customer_id  in (7,13,10)
order by return_date desc;


select * from payment limit 1;

select * from payment 
where amount in (7.99, 8.99);

--Pattern matching -------

select first_name, last_name 
from customer
where first_name like 'Jen%';

select first_name, last_name 
from customer
where first_name like '%y';

select first_name, last_name 
from customer
where first_name like '%er%';

-- using underscore pattern matching
 
select first_name, last_name 
from customer
where first_name like '_er%';



-- Not LIke examples

select first_name, last_name 
from customer
where first_name not like 'Jen%';


-- case sensitivity

select first_name, last_name 
from customer
where first_name  ilike 'BaR%';

select first_name, last_name 
from customer
where first_name  like 'BaR%';






