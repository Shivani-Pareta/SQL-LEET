
#TRIAL 1
-- SELECT sell_date,
--     COUNT(product) AS num_sold,
--     CONCAT(product) AS products
-- FROM Activities
-- GROUP BY sell_date

#Problems encountered : num_sold sum are wrong because of same product being counted again; not all products are being listed


#TRIAL 2
-- SELECT sell_date,
--     COUNT(product) AS num_sold,
--     GROUP_CONCAT(DISTINCT product) AS products
-- FROM Activities
-- GROUP BY sell_date

#result : all the product names found in the product column 
#Problem encountered: Number sold sums the product twice. Product should be listed lexicographically. 

#TRIAL 3 FINAL CODE SUCCESSFULLY EXECUTED 
SELECT sell_date,
    COUNT(DISTINCT product) AS num_sold,
    GROUP_CONCAT(DISTINCT product) AS products
FROM Activities
GROUP BY sell_date