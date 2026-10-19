-- # Write your MySQL query statement below


-- SELECT w1.id
-- FROM Weather w1
-- JOIN Weather w2
-- ON  DATEDIFF(w1.recordDate,w2.recordDate) = 1
-- WHERE w1.temperature > w2.temperature;

-- The idea here was to create a new table which would have the entries from the second entry of the primary table 
-- but the id entries should start frpm 1 
-- then comparing the newly created table on id for each.

-- WITH NewWeather AS(
--     SELECT 
--         ROW_NUMBER() OVER (ORDER BY recordDate) AS id,
--         recordDate,
--         temperature
--     FROM Weather
-- )

-- SELECT w.id 
-- FROM Weather w
-- JOIN NewWeather nw
-- ON w.id = nw.id+1
-- WHERE w.temperature > nw.temperature
-- ORDER BY w.recordDate 

-- Select w1.id as Id 
-- from Weather as w1 
-- Join Weather as w2 
-- on w1.recordDate = DATE_ADD(w2.recordDate, INTERVAL 1 DAY)
-- Where w1.temperature > w2.temperature;

#if you do not know the date functions then you can use interval keyword
SELECT w1.id
FROM Weather w1
JOIN Weather w2 
  ON w1.recordDate = w2.recordDate + INTERVAL 1 DAY
WHERE w1.temperature > w2.temperature;