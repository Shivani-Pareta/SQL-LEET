# Write your MySQL query statement below
#create a cte to find the first login using the min function grouping by player id.
with cte as (
    select
        player_id,
        min(event_date) as first_login
    from 
        Activity
    group by 
        player_id
),

#create a second cte to find the day next to the first login using the date_add function
cte2 as(
    select *,
    date_add(first_login, interval 1 day) as next_day
from 
    cte
)

#find the common entries in table activity and cte2 using where function
#change the output to count rather than a * so that we can get out numerator for the fraction (having the count of the players that had same entries as the first login and next day)
#for denominator count the distinct number of players in the Activity table
#rounding the whole thing to two decimal places as asked naming the whole thing as fraction again, as asked
select round(
    (select count(distinct player_id)
    from 
        Activity
    where (player_id,event_date) in 
        (select
            player_id,
            next_day
        from
            cte2)
    )/ 
    (select count(distinct player_id )
    from Activity)   
,2) as fraction
