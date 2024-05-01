-- 코드를 입력하세요
SELECT CAR_ID, if(sum(if('2022-10-16' between START_DATE and END_DATE,1,0)),'대여중','대여 가능') 'AVAILABILITY'
from CAR_RENTAL_COMPANY_RENTAL_HISTORY
group by 1
order by 1 desc