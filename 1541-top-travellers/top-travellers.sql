SELECT 
    u.name,
        CASE
            WHEN r.distance IS NOT NULL THEN SUM(r.distance)
            WHEN r.distance IS NULL THEN 0
        END AS travelled_distance
FROM 
    Users AS u
LEFT JOIN Rides AS r
ON r.user_id = u.id
GROUP BY u.id
ORDER BY travelled_distance DESC, name ASC
