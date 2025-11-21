# Write your MySQL query statement below
with accepter as(
    select requester_id as id from RequestAccepted
    union all
    select accepter_id as num from RequestAccepted
)
select id,count(*) as num
from accepter
group by id
order by num desc
limit 1;