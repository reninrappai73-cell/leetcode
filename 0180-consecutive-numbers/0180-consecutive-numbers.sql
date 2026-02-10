-- Write your PostgreSQL query statement below
select distinct num as consecutivenums
from(
select id,num,
lag(num, 1) over(order by id) as prev_num,
lag(num, 2) over(order by id) as prev_num2
from logs
)t
where num = prev_num 
and num = prev_num2;