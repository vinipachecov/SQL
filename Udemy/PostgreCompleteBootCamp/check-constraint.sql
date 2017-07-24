create table newusers(
id serial primary key,
first_name varchar(50) not null,
birth_date DATE check(birth_date > '1900-01-01'),
join_date date check(join_date  > birth_date),
salary integer check(salary > 0)
);

select * from newusers;

--insert a new row

-- insert with -10 salary
insert into newusers (first_name, birth_date, join_date, salary)
values
('Joe', '1980-02-02','1990-04-04',-10);

-- fails the salary check î

create table checktest(
sales integer constraint positive_sales check(sales>0));

select * from checktest;

-- try to insert a value that is 0 for example to test the check.

insert into checktest(sales)
values
(0);

