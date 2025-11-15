select 
d.name as department,
e.name as employee,
e.salary
from
(select emp.*, 
DENSE_RANK() over(PARTITION BY emp.departmentid order by salary desc) as s from employee emp
) e
join department d on e.departmentId=d.id
where e.s<=3;