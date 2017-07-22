--create table challenge

create table lead(
lead_id serial primary key,
customer_first_name varchar(50) not null,
last_name varchar(50) not null,
email varchar(100) unique not null,
signup_date timestamp without time zone,
minutes_spent_on_site integer not null);