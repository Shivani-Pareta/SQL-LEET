# Write your MySQL query statement below
select Department, Employee, Salary
from(
    select 
        d.name as Department,
        e.name as Employee,
        e.salary as Salary,
        dense_rank() over(partition by d.name order by e.salary desc) as 'rnk'
    from Employee as e
    join Department as d
    on e.departmentId = d.id
) as Output
where rnk < 4

#the above problem can be solves in two ways either you can create a sub query inside a from function or you can seperately create a cte and then use that in the later fucntion
#dense rank allows us to partition / divide the entire data into different depeartments and then order the sale by their salaries into a descending function and then rank them in such a manner that if a salary is to be repeated the the rank repeats and then continues form the next number onwards 
#hence we later gave a command according to the requirements to finc the people who have the salary in the top 3 range hence the where close where we keep the rnk column created by the dense rank windows function as less than 4.
    

