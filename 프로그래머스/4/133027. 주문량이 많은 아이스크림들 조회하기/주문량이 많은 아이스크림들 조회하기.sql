-- 코드를 입력하세요
SELECT f.FLAVOR
from FIRST_HALF f, JULY j
where f.FLAVOR = j.FLAVOR
group by f.FLAVOR	
having sum(f.TOTAL_ORDER + j.TOTAL_ORDER)
order by sum(f.TOTAL_ORDER + j.TOTAL_ORDER) desc
limit 3