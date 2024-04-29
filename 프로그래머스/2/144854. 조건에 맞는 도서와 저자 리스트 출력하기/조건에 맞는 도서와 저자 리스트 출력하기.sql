-- 코드를 입력하세요
SELECT b.BOOK_ID, a.AUTHOR_NAME, DATE_FORMAT(b.PUBLISHED_DATE, '%Y-%m-%d') 'PUBLISHED_DATE'
from BOOK b inner join AUTHOR a on b.AUTHOR_ID = a.AUTHOR_ID
where b.CATEGORY = '경제'
order by 3