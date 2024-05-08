-- 코드를 입력하세요
SELECT HISTORY_ID, CAR_ID,
date_format(START_DATE,'%Y-%m-%d') 'START_DATE',
date_format(END_DATE,'%Y-%m-%d') 'END_DATE',
if(DATEDIFF(END_DATE,START_DATE) >= 29, '장기 대여', '단기 대여') 'RENT_TYPE'
from CAR_RENTAL_COMPANY_RENTAL_HISTORY
where month(START_DATE) = '9'
order by 1 desc