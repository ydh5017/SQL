-- 코드를 입력하세요
# SELECT 
# from ()

select HOUR(DATETIME) 'HOUR', count(*) 'COUNT'
from ANIMAL_OUTS
where HOUR(DATETIME) between 9 and 19
group by HOUR(DATETIME)
order by 1