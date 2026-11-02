# Write your MySQL query statement below

select v.customer_id,count(v.customer_id) as count_no_trans 
from Visits v
left join Transactions t
on v.visit_id = t.visit_id
where t.transaction_id is null
group by v.customer_id


-- select customer_id,
-- from Visits
-- where customer_id NOT IN (
--     select 
--         v.customer_id,
--         count(v.customer_id ) as count_no_trans 
--     from Visits v
--     left join Transactions t
--     on v.visit_id = t.visit_id 
-- ) as r
    
-- with cte as (
--     select v.customer_id as customer_id
--     from Visits v
--     right join Transactions t
--     on v.visit_id = t.visit_id
-- )

-- select 
--     customer_id,
--     count(customer_id) as count_no_trans 
-- from Visits
-- where customer_id not in (
--     select customer_id
--     from cte
-- )
-- group by customer_id
