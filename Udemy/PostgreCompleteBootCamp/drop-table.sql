-- Syntax drop table [if exists] table_name



create table test2 (
testid serial primary key);

select * from test2;

-- dropping table

drop table test2;

select * from test2;

-- results in a error because it was deleted


-- trying deleting a table so you don't get an error if the table doesn't exists

drop table if exists test2;

-- restrict is automatically input 
-- refuses if any object is depending on this table

drop table if exists test2 restrict;

-- remove table with dependencies together or constraints and objects;

drop table if exists test2 cascade;

