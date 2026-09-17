# Write your MySQL query statement below
SELECT firstName, lastName,city,state
    -- IFNULL(city, 'null') AS city,
    -- IFNULL(state, 'null') AS state
FROM Person
LEFT JOIN Address
ON Person.personId = Address.personId;