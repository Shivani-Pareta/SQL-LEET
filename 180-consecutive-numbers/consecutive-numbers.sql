
with cte as (
    select 
        num as ConsecutiveNums,
        lead(num,1) over(order by id)as num1,
        lead(num,2) over(order by id) as num2
    from Logs
    )
select distinct ConsecutiveNums from cte  
where (ConsecutiveNums = num1) and (ConsecutiveNums = num2) 

