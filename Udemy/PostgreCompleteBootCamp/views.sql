select * from customer;

select * from address;

select first_name,last_name,email, address, phone 
from customer
join address 
on customer.address_id = address.address_id;


create view customer_info as
select first_name,last_name,email, address, phone 
from customer
join address 
on customer.address_id = address.address_id;

select * from customer_info;

-- alter view
-- rename the view

alter view customer_info rename to customer_master_list;

select * from customer_master_list;

--deleting view

drop view customer_master_list;