# Write your MySQL query statement below
SELECT MAX(num) AS num
FROM (
    SELECT num
    FROM MyNumbers
    GROUP BY num
    HAVING COUNT(num)<=1
) AS numbers;
-- HAVING COUNT(num)<=1
-- ORDER BY num DESC 
-- LIMIT 1
-- WHERE num=(
--     SELECT MAX(num)
--     FROM MyNumbers
-- )
-- GROUP BY num
-- HAVING COUNT(num)<=1