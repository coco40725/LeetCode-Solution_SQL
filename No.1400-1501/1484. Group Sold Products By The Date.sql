# Write your MySQL query statement below
select a1.sell_date, COUNT(1) "num_sold", GROUP_CONCAT(a1.product order by a1.product asc) "products"
from (
    select *
    from Activities
    group by sell_date, product
) a1

group by a1.sell_date
order by a1.sell_date;
