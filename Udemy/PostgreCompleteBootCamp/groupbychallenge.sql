--We have two staff members with Staf IDs 1 and2. 
-- we want to give a bonus to the staff member that handled the most payments.
--How many payments did each staff member handle?
--and hwo much was the total amount processed by each staff member?

select * from payment

select staff_id, count(amount) from payment group by staff_id