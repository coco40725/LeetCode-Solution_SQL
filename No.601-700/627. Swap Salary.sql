# Write your MySQL query statement below
update Salary
set sex = (
    CASE 
    WHEN sex = 'f' then 'm' 
    else 'f' 
    end
) ;      
