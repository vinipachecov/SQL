select * from link;

delete from link
where name like 'B%';


delete from link
where name = 'A'
returning *;