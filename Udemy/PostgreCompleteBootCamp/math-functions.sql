-- math functions

select customer_id + rental_id as new_id from payment;


-- divisions
select rental_id / customer_id  as new_id from payment;


select round(avg(amount),2) from payment;
