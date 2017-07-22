create table account_role(
user_id integer not null ,
role_id integer not null,
grant_date timestamp without time zone,
primary key(user_id, role_id),
constraint account_role_role_id_fkey foreign key(role_id)
references role(role_id) match simple,
constraint account_role_user_id_fkey  foreign key(user_id)
references account (user_id) match simple
on update no action on delete no action
);