-- Write your PostgreSQL query statement below
select U.unique_id,
e.name 
from employees e
left join employeeUNI u on e.id = u.id;
