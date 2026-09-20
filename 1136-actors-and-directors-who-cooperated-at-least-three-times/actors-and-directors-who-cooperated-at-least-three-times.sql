# Write your MySQL query statement below
SELECT actor_id, director_id 
FROM ActorDirector
GROUP BY actor_id, director_id 
HAVING COUNT(*)>=3







-- -- WHERE actor_id = director_id 
-- -- AND COUNT(actor_id = director_id ) =3
-- ORDER BY CASE 
--     WHEN actor_id = director_id THEN 1 AND COUNT()>=3
--     -- WHEN COUNT(actor_id = director_id ) >=3
-- END

