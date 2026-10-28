
select distinct ConsecutiveNums 
from  (
    select 
        num as ConsecutiveNums,
        lead(num,1) over(order by id)as num1,
        lead(num,2) over(order by id) as num2
    from Logs
    ) as temp_table
where (ConsecutiveNums = num1) and (ConsecutiveNums = num2) 

