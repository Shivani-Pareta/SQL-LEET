# TRIAL 1
-- select 
--     salary as SecondHighestSalary
-- from Employee
-- order by salary
-- limit 1 offset 1
#Result - able to get the second highest salary
#Probelms -  null value to be displayed for where the salary is not found
-- sorting to be done in descending order to get the highest to lowest list

#TRIAL 2
select 
    ifnull(
        (select distinct salary
        from Employee
        order by salary desc
        limit 1 offset 1),
        null
    ) as SecondHighestSalary;
#Result - the descending problem is solved by ordering the list in descending order and adding the null factor (if null) to identify whether the value is null to display null when no value found.