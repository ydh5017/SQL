-- 코드를 입력하세요
SELECT
u.USER_ID,
u.NICKNAME,
concat_ws(' ',CITY,STREET_ADDRESS1,STREET_ADDRESS2) '전체주소',
concat_ws("-",substr(TLNO,1,3),substr(TLNO,4,4),substr(TLNO,8,4)) '전화번호'
from USED_GOODS_BOARD b inner join USED_GOODS_USER u on b.WRITER_ID = u.USER_ID
group by 1
having count(u.USER_ID) > 2
order by 1 desc