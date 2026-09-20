# Write your MySQL query statement below
UPDATE Salary
-- SELECT id,name,sex,salary 
SET sex = CASE 
    WHEN sex = 'f' THEN 'm'
    WHEN sex = 'm' THEN 'f'
    -- ELSE sex
END 
-- FROM Salary