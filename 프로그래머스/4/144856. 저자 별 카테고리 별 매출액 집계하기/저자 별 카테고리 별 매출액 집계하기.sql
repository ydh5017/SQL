-- 코드를 입력하세요
SELECT a.AUTHOR_ID, a.AUTHOR_NAME, b.CATEGORY, sum(s.SALES*b.PRICE) 'TOTAL_SALES'
from BOOK b left join AUTHOR a on b.AUTHOR_ID = a.AUTHOR_ID
          left join BOOK_SALES s on b.BOOK_ID = s.BOOK_ID
where month(s.SALES_DATE) = '1'
group by 1, 3
order by 1, 3 desc