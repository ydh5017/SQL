-- 코드를 입력하세요
SELECT i.NAME, i.DATETIME
from ANIMAL_INS as i left join ANIMAL_OUTS as o on i.ANIMAL_ID = o.ANIMAL_ID
where o.DATETIME is null
order by 2 limit 3