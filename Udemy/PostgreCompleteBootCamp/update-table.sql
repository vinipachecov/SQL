select * from link;

update link
set  
description = 'Empty Description';

update link
set
description = 'Name starts with an A'
where name like 'A%';


update link
set description = name;

-- returning what rows have been changed

update link
set description = 'New Description'
where id = 1
returning id,url,"name",description;





