-- 코드를 입력하세요
SELECT CAR_TYPE, count(*) 'CARS'
from CAR_RENTAL_COMPANY_CAR
# 정규식을 이용한 방법
# WHERE OPTIONS REGEXP '통풍시트|열선시트|가죽시트'
where OPTIONS like '%통풍시트%' or OPTIONS like '%열선시트%' or OPTIONS like '%가죽시트%'
group by CAR_TYPE
order by 1