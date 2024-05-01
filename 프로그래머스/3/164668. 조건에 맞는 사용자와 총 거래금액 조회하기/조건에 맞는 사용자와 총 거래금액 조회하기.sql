-- 코드를 입력하세요
SELECT u.USER_ID, u.NICKNAME, sum(b.PRICE) 'TOTAL_SALES'
from USED_GOODS_BOARD b inner join USED_GOODS_USER u on b.WRITER_ID = u.USER_ID
where b.STATUS = 'DONE'
group by 1,2
having sum(b.PRICE) >= 700000
order by 3