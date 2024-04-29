-- 코드를 입력하세요
SELECT i.INGREDIENT_TYPE, sum(f.TOTAL_ORDER) 'TOTAL_ORDER'
from FIRST_HALF f inner join ICECREAM_INFO i on f.FLAVOR = i.FLAVOR
group by i.INGREDIENT_TYPE
order by 2