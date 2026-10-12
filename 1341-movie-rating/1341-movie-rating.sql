# Write your MySQL query statement below
(select u.name as results
from users u
join movierating m
on u.user_id = m.user_id
group by u.user_id, u.name
order by count(*) desc, u.name
limit 1)

union all

(select mo.title as results
from movies mo
join movierating mr
on mo.movie_id = mr.movie_id
where mr.created_at >= '2020-02-01'
  and mr.created_at < '2020-03-01'
group by mo.movie_id, mo.title
order by avg(mr.rating) desc, mo.title
limit 1);