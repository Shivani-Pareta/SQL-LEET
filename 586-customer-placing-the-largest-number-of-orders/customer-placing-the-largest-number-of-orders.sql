-- # Write your MySQL query statement below
-- SELECT customer_number
-- FROM Orders
-- WHERE customer_number > ALL(
--     SELECT customer_number
--     FROM Orders
--     GROUP BY 
--     having count(customer_number)>1
-- )

SELECT customer_number
FROM Orders
GROUP BY customer_number
order by count(customer_number)DESC
LIMIT 1