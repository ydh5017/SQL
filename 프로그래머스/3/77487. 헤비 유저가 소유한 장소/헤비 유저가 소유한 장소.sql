-- 코드를 입력하세요
SELECT ID, NAME, HOST_ID
from PLACES
where HOST_ID in (select HOST_ID from PLACES group by 1 having count(*) >=2)