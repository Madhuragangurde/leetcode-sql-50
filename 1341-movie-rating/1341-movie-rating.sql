# Write your MySQL query statement below
SELECT name AS results
FROM (
    SELECT Users.name
    FROM Users
    JOIN MovieRating
        ON Users.user_id = MovieRating.user_id
    GROUP BY Users.user_id, Users.name
    ORDER BY COUNT(*) DESC, Users.name ASC
    LIMIT 1
) AS user_result

UNION ALL

SELECT title AS results
FROM (
    SELECT Movies.title
    FROM Movies
    JOIN MovieRating
        ON Movies.movie_id = MovieRating.movie_id
    WHERE created_at >= '2020-02-01'
      AND created_at < '2020-03-01'
    GROUP BY Movies.movie_id, Movies.title
    ORDER BY AVG(rating) DESC, Movies.title ASC
    LIMIT 1
) AS movie_result;