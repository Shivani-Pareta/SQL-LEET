# Write your MySQL query statement below
SELECT * FROM Cinema
WHERE id % 2 !=0 AND description != 'boring'
ORDER BY rating DESC


-- SELECT id, movie, description, rating
-- FROM Cinema
-- WHERE CASE 
--         WHEN id % 2 != 0 AND description != 'boring' THEN 1 
--         ELSE 0 
--       END = 1
-- ORDER BY rating DESC;