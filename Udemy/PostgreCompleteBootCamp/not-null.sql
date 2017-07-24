create table learnnull(
firstname varchar(50),
sales integer not null);

select * from learnnull;

insert into learnnull(firstname)
values
('John');

-- return an error because it try to insert (john, null)

insert into learnnull(firstname, sales)
values
('John',12);

select * from learnnull;
