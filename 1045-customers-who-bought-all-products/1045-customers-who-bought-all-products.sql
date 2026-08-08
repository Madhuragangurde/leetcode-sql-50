# Write your MySQL query statement below
select c.customer_id
from customer c
right join product p
on c.product_key=p.product_key
group by c.customer_id
having count(distinct(c.product_key))=(select count(*) from product)
and count(c.product_key)>1
order by c.customer_id;

/*
SELECT c.customer_id
FROM Customer c
GROUP BY c.customer_id
HAVING COUNT(DISTINCT c.product_key) = (
    SELECT COUNT(*)
    FROM Product
)
ORDER BY c.customer_id;
*/