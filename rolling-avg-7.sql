SELECT sales_date, sales_amt,
    avg(sales_amt) over(order by sales_date rows between 7 preceding and current row) as rolling_avg
from daily_sales