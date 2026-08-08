# Write your MySQL query statement below
select user_id, concat(upper(left(name,1)),lower(substring(name,2))) as name
from Users
order by user_id;


/*
SELECT user_id,
       CONCAT(
           UPPER(LEFT(name, 1)),
           LOWER(RIGHT(name, LENGTH(name) - 1))
       ) AS name
FROM Users;
*/

/*
SELECT
    user_id,
    REGEXP_REPLACE(
        LOWER(name),
        '^.',
        UPPER(SUBSTRING(name, 1, 1))
    ) AS name
FROM Users;
*/