# Write your MySQL query statement below
select employee_id, case 1
when e.employee_id % 2 != 0  and  e.name NOT regexp '^[M]' then e.salary
else 0
end "bonus"
from Employees e
order by e.employee_id;
