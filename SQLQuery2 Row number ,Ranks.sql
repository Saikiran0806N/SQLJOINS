Select * from Students


-- Row number If tie random assinging  of Row Numbers 

Select *,
ROW_NUMBER() over(order by Marks desc) as [Row Number]
from Students


-- Rank if tie next rank is skipped 
Select *,
RANK() Over(Order by Marks desc) as [Ranks]
from Students

--Dense Rank if tie next ranks is not skipped 
select *,DENSE_RANK() over(order by marks desc) as [Dense rank]
from Students