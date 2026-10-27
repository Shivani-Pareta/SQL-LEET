# Write your MySQL query statement below
#we can put a loop inside the select statement from where we wish to access our data or we can create a cte for the same data and then use it as a reference in the query .
select  Department, Employee,Salary 
from(
    select
        d.name as Department,
        e.name as Employee,
        e.salary,
        dense_rank() over(partition by d.name order by e.salary desc) as rnk
        #max(e.salary) over(partition by d.name) as max_DepartmentSalary
    from Employee e
    join Department d
    on e.departmentId = d.id
) as HighestEarningEmployees
where rnk = 1

#dense rank first partitions the entire table into sections of different departments and then it arranges them into descending order by salary later giving it ranks such that if a salary appear twice the rank is repeated and then the counting is continued
#later we used the max windows function to determine the maximum salary of the department for our understanding which is completetly removabale from the query but to be sure that our query is running right we did this.



-- with HighestEarningEmployees as (
--     select
--         d.name as Department,
--         e.name as Employee,
--         e.salary,
--         dense_rank() over(partition by d.name order by e.salary desc) as rnk,
--         max(e.salary) over(partition by d.name) as max_DepartmentSalary
--     from Employee e
--     join Department d
--     on e.departmentId = d.id
-- )
    

-- Select Department,Employee, Salary
-- From HighestEarningEmployees
-- Where rnk = 1