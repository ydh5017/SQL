-- 코드를 입력하세요
SELECT b.CATEGORY, sum(s.SALES) 'TOTAL_SALES'
from BOOK b inner join BOOK_SALES s on b.BOOK_ID = s.BOOK_ID
where MONTH(s.SALES_DATE) = 1
group by b.CATEGORY
order by 1