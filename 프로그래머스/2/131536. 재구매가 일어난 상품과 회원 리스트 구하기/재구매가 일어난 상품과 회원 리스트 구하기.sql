-- 코드를 입력하세요
SELECT USER_ID, PRODUCT_ID
from ONLINE_SALE
group by 1, 2
having count(USER_ID) > 1
order by 1, 2 desc