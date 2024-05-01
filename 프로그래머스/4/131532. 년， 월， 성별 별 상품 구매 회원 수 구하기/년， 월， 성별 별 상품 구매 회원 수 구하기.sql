-- 코드를 입력하세요
SELECT
year(o.SALES_DATE) 'YEAR',
month(o.SALES_DATE) 'MONTH',
u.GENDER 'GENDER',
count(distinct u.USER_ID) 'USERS'
from USER_INFO u inner join ONLINE_SALE o on u.USER_ID = o.USER_ID
where o.SALES_DATE is not null and u.GENDER is not null
group by 1,2,3
order by 1,2,3