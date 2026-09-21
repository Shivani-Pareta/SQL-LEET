# Write your MySQL query statement below
SELECT 
    q.query_name, 
    ROUND(AVG(q.rating/q.position),2) AS quality,
    ROUND(AVG(rating < 3)*100,2) AS poor_query_percentage 
FROM Queries q
GROUP BY query_name 