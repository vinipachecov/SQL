select avg(amount) from payment;


--rounding values and setting precision
select round (avg(amount),2) from payment;

select min(amount) from payment;

select amount from payment order by amount;

select count(amount) from payment where amount= 0.00;

select max(amount) from payment;

select round (sum(amount) , 2) from payment;

