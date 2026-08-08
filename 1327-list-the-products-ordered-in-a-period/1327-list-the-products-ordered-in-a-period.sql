# Write your MySQL query statement below
select p.product_name, sum(o.unit) as unit
from products p
join orders o
on p.product_id=o.product_id
where order_date regexp '^2020-02-[0-9]{2}$'
group by p.product_name
having sum(o.unit)>=100;

/*
WHERE YEAR(o.order_date) = 2020
  AND MONTH(o.order_date) = 2
*/

/*
WHERE o.order_date BETWEEN '2020-02-01' AND '2020-02-29'
*/