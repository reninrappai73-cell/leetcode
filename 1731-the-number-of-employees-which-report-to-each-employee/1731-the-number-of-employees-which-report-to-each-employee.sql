# Write your MySQL query statement below
select m.employee_id,m.name,count(m.employee_id) as reports_count,round(avg(e.age))as average_age
from employees e
join employees m on e.reports_to=m.employee_id
WHERE e.reports_to IS NOT NULL
group by m.employee_id,m.name
ORDER BY m.employee_id;