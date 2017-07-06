--We have two staff members with Staf IDs 1 and2. 
-- we want to give a bonus to the staff member that handled the most payments.
--How many payments did each staff member handle?
--and hwo much was the total amount processed by each staff member?

select * from payment

select staff_id, count(amount), sum(amount) from payment group by staff_id

--Corporate headquarters is auditing our store!
--They want to know the average replacement cost of movies by rating
-- for example, R rated movies have an average replacement cost of $20.30
-- Example for R rated movies below:
select avg(replacement_cost) from film where rating = 'R';

--answer
select rating, avg(replacement_cost) from film group by rating;
--answer with rounding 2 decimal point
select rating, round(avg(replacement_cost),2) from film group by rating;

--We want ot send coupons to the 5 customers who have spent
-- the most amount of money
-- Get me the custormer ids of the top 5 spenders

select customer_id, sum(amount) from payment group by  customer_id order by sum(amount) desc limit 5;  