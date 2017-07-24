create table students(
student_id serial primary key,
first_name varchar(100) not null, 
last_name varchar(100) not null,
homeroom_number varchar(15),
phone varchar(20) unique not null,
email varchar(100) unique,
graduation_year timestamp without time zone);


create table teachers(
teacher_id serial primary key,
first_name varchar(100) not null,
last_name varchar(100) not null,
homeroom_number integer,
department varchar(100),
email varchar(100) unique,
phone varchar(20) unique not null);

insert into students(first_name, last_name, homeroom_number, phone, graduation_year)
values
('Mark', 'Watney', 5 , '77555551234', '2035-01-01');

insert into teachers(first_name, last_name, homeroom_number, department, email,phone)
values
('Jonas', 'Saalk', 5, 'Biology', 'jsalk@school.org', '775555331234');