# Write your MySQL query statement below
select  Department, Employee,Salary 
from(
    select
        d.name as Department,
        e.name as Employee,
        e.salary,
        dense_rank() over(partition by d.name order by e.salary desc) as rnk,
        max(e.salary) over(partition by d.name) as max_DepartmentSalary
    from Employee e
    join Department d
    on e.departmentId = d.id
) as HighestEarningEmployees
where rnk = 1
    

