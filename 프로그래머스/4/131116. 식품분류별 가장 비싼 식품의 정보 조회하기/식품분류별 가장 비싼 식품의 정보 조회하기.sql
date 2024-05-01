-- 코드를 입력하세요
SELECT CATEGORY, PRICE 'MAX_PRICE', PRODUCT_NAME
from FOOD_PRODUCT 
where category in ('식용유', '김치', '국', '과자')
    and PRICE in (select max(PRICE)
                 from FOOD_PRODUCT
                 group by CATEGORY)
group by 1
order by 2 desc