-- 코드를 입력하세요
SELECT p.PRODUCT_CODE, p.PRICE * sum(s.SALES_AMOUNT) 'SALES'
from PRODUCT p inner join OFFLINE_SALE s on p.PRODUCT_ID = s.PRODUCT_ID
group by p.PRODUCT_CODE
order by 2 desc, 1 asc