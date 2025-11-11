# Write your MySQL query statement below
select name 
from employee e
join(select managerId from employee
group by managerId
having count(managerId)>=5) 
m on e.id = m.managerId;
