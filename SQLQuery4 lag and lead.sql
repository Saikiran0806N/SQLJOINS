select * from profitdata

-- adding a colummn which shows next months profit next to profit cloumns

select *,LEAD(Profit) over(partition by Product order by monthnumber ) [Nxt Month's Profit]
from ProfitData

-- Total Profit 

select monthname,monthnumber,SUM(profit) [Total Profit],
LEAD(sum (profit)) over(order by monthnumber) [next month total profit]
from profitdata
group by monthnumber,monthname


-- lag function

Select *,LAG(profit) over (partition by product order by monthnumber) [Lag Function]
from profitdata


--lag function total profit

select monthname,monthnumber,SUM(profit) [Total Profit],
Lag(sum (profit)) over(order by monthnumber) [Previous month total profit]
from profitdata
group by monthnumber,monthname