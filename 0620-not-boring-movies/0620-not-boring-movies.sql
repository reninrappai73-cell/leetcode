# Write your MySQL query statement below
SELECT *
FROM Cinema  C
WHERE c.description != "boring" and c.id%2!= 0
ORDER BY c.rating DESC;