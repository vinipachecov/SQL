create table link(
ID serial primary key,
url varchar(255) not null,
name varchar(255) not null,
description varchar(255),
rel varchar(50));

-- checking if the table was successfully created

select * from link;

--insert examples

insert into link(
url, name)
values (
'www.google.com','Google');

-- check if created

insert into link(
url, name)
values (
'www.yahoo.com','Yahoo');

-- check again if created

insert into link(url,name)
values
('www.bing.com', 'Bing'),
('www.amazon.com','Amazon');

select * from link;

--insert data into another table


create table link_copy(like link);


select * from link_copy;

--no data but the same structure of the link table


insert into link_copy
select * from link
where name = 'Bing';