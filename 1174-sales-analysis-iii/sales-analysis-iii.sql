# Write your MySQL query statement below
-- SELECT 
--     P.product_id, P.product_name
-- FROM Product P
-- JOIN Sales S
-- ON S.product_id = P.product_id
-- WHERE S.sale_date BETWEEN '2019-01-01' AND '2019-03-31'
-- GROUP BY P.product_id,P.product_name

#for the only sold in first quarter having clause is important as it is deciding the date range it is supposed to be in where clause will work when we can consider if the product is sold even once in the first quarter but since product 2 was sold even after that our solution requires the having clause.

SELECT s.product_id, product_name
FROM Sales s
LEFT JOIN Product p
ON s.product_id = p.product_id
GROUP BY s.product_id
HAVING MIN(sale_date) >= CAST('2019-01-01' AS DATE) AND
       MAX(sale_date) <= CAST('2019-03-31' AS DATE)