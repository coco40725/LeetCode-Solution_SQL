# Write your MySQL query statement below
# the order by is applied to the complete resultset


# method 1:
# select e.employee_id "employee_id"
# from Employees e 
# left join Salaries s
# on e.employee_id = s.employee_id
# where  s.salary is null
#     union
# select s.employee_id "employee_id"
# from Employees e 
# right join  Salaries s
# on e.employee_id = s.employee_id
# where e.employee_id is null
# order by employee_id;

# method 2:
select e.employee_id "employee_id"
from Employees e
where e.employee_id not in (select s.employee_id from Salaries s)
union 
select s.employee_id "employee_id"
from Salaries s
where s.employee_id not in (select e.employee_id from Employees e)
order by employee_id;

