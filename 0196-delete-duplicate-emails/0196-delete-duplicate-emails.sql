

delete from Person
where id not in
(select id
from(select min(id) as id
from person 
group by email)as temp
);