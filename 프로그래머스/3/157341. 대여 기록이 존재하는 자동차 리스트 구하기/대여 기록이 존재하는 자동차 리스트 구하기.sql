-- 코드를 입력하세요
SELECT c.CAR_ID
from CAR_RENTAL_COMPANY_CAR c inner join CAR_RENTAL_COMPANY_RENTAL_HISTORY h on c.CAR_ID = h.CAR_ID
where c.CAR_TYPE = '세단'
and month(h.START_DATE) = '10'
group by 1
order by 1 desc