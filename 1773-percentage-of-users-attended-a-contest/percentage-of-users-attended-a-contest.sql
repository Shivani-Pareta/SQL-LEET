# Write your MySQL query statement below
#the following query does not need the tables to be joined but does need to use both the tables 
#the user table to count the number of total users there are and then use the count as denominator to get percentage 
#countind the number of user in register table to figure out the numerator of our percentage 

select 
    r.contest_id,
    round(
        (count(distinct r.user_id)
         /
        (select count(*) from Users)
      ) * 100, 2) as percentage
from 
    Register r
group by 
    r.contest_id
order by 
    percentage desc,
    contest_id asc;