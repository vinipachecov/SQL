create table link(
linkid serial primary key,
title varchar(512) not null,
url varchar(255) not null unique);

select * from 
link;

alter table link  
add column active boolean;

select * from link;


alter table link drop column active;

-- check if column persists

select * from link;

--change column name

alter table link rename column title to new_title_name;

-- check columns

select * from link;


--change table name

alter table link rename to url_table;


select * from link;

-- no result


select * from url_table;

-- new results