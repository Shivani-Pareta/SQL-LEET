# Write your MySQL query statement below
#trial 1 
select 
    round(score,2) as score,
    Dense_rank() over (order by score desc) as 'rank'
from Scores