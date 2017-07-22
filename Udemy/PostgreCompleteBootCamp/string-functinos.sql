-- check customer table

select * from customer;

-- play with first name and last name
--Concatenating
select first_name || last_name from customer;

-- put a space between names and put a name to the column

select first_name || ' ' || last_name as full_name from customer;

--mess around with a function that show how many characters a string have;

select first_name, character_length(first_name) from customer;

--return a string upper and lower

select first_name, upper(first_name) from customer;

select first_name, lower(first_name) from customer;






