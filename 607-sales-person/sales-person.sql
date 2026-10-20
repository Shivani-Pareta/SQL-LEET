#step1
#figuring out who sold to "red"
-- select sales_id 
-- from orders o
-- left join Company c
-- on c.com_id =  o.com_id
-- where c.name LIKE 'RED'

#step2
#creating common table expression of the data above to be able to exclude it, we can create a view as well when working in real time if necessary
-- with cte as (
--     select sales_id 
--     from orders o
--     left join Company c
--     on c.com_id =  o.com_id
--     where c.name LIKE 'RED'
-- )
#exclude the data by using not in function 
-- select name
-- from SalesPerson
-- where sales_id not in (select distinct sales_id from cte)


#step3 
#better to merge the two queries into one to reduce runtime
select name
from SalesPerson
where sales_id not in (
    select sales_id 
    from orders o
    left join Company c
    on c.com_id =  o.com_id
    where c.name LIKE 'RED'
)