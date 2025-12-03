-- Write your PostgreSQL query statement below
with weight as(
select 
person_name,
turn,
sum(weight) over(order by turn) as running_total
from queue
)
select person_name
from weight
where running_total <= 1000
order by turn desc
limit 1;