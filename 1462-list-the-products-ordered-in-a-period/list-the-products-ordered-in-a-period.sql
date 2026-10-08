# Write your MySQL query statement below
SELECT
    Products.product_name,
    SUM(Orders.unit) AS unit
FROM Products
LEFT JOIN Orders
ON Products.product_id = Orders.product_id
WHERE year(order_date) = 2020 AND month(order_date) = 2
GROUP BY Orders.product_id 
HAVING SUM(unit) >99 
