# Write your MySQL query statement below
SELECT * FROM Cinema
-- CASE
WHERE id % 2 !=0 AND description != 'boring'
ORDER BY rating DESC
--     WHEN description != 'boring'
--     ELSE 'NULL'
-- END

