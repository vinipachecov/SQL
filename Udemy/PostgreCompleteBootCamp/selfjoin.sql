-- remember how the customer table looks like
select * from customer limit 5;


--retrieve all customers whose last name matches the first name of another customer

select a.first_name, a.last_name, b.first_name, b.last_name
from customer as a, customer as b
where a.first_name = b.last_name

select a.customer_id, a.first_name, a.last_name, b.customer_id, b.first_name, b.last_name
from customer as a, customer as b
where a.first_name = b.last_name


-- using join and an ON statement

select a.customer_id, a.first_name, a.last_name, b.customer_id, b.first_name, b.last_name
from customer as a
join customer as b 
on a.first_name = b.last_name


select a.customer_id, a.first_name, a.last_name, b.customer_id, b.first_name, b.last_name
from customer as a
join customer as b 
on a.first_name = b.last_name
order by a.customer_id;

--getting all samples even if there is no match

select a.customer_id, a.first_name, a.last_name, b.customer_id, b.first_name, b.last_name
from customer as a
left join customer as b 
on a.first_name = b.last_name
order by a.customer_id;




