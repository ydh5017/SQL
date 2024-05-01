-- 코드를 입력하세요
SELECT
truncate(PRICE, -4) 'PRICE_GROUP',
count(*) 'PRODUCTS'
from PRODUCT
group by 1
order by 1