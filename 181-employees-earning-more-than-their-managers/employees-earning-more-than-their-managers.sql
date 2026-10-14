SELECT
    a.name AS Employee
FROM 
    Employee b
INNER JOIN Employee a
ON b.id = a.managerId
WHERE a.salary > b.salary

