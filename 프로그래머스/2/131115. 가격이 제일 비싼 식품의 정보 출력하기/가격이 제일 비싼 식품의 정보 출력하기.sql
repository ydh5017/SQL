-- case 1 : order by, limit
# SELECT *
# from FOOD_PRODUCT
# order by PRICE desc
# limit 1

-- case 2 : subquery, max
SELECT *
from FOOD_PRODUCT
where PRICE = (select max(PRICE) from FOOD_PRODUCT)