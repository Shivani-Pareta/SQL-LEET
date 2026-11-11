# Write your MySQL query statement below
#the approach would be to break the names into two columns say first letter and remaining letters 
#remaining letters would be turned into lower case and first would be turned into upper case and later everything would be concatenated
SELECT 
    user_id, 
    CONCAT(
        UPPER(SUBSTRING(name,1,1)) ,
        LOWER(SUBSTRING(name,2,LENGTH(name)-1))
    ) as name
FROM Users
ORDER BY user_id