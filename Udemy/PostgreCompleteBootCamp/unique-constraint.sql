create table people(
id serial primary key,
firstname varchar(50),
email varchar(100) unique);

insert into people(id, firstname, email)
values
(1,'Joe', 'joe@joe.com');

select * from people;

-- error duplicate email errors
insert into people(id, firstname, email)
values
(2,'Joseph','joe@joe.com');