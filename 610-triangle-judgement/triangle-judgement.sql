-- # Write your MySQL query statement below
-- SELECT x,y,z
-- FROM Triangle
-- WHERE x+y > z
-- CREATE TABLE Copy_Triangle AS
-- SELECT * 
-- FROM Triangle;

SELECT x,y,z,
CASE 
    WHEN x+y>z AND y+z>x AND x+z>y THEN 'Yes'
    ELSE 'No'
END AS triangle
FROM Triangle
