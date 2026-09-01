Select * from  Students

--Row Number  partition by Marks 

Select *,ROW_NUMBER() over(partition by Subject order by Marks Desc) [RowNumber]
from Students

--Row Numbers Partition by student Name

Select *,ROW_NUMBER() over(partition by student_name order by Marks Desc) [RowNumber]
from Students

--Rank partition by Marks

Select *,Rank() over(partition by Subject order by Marks Desc) [RowNumber]
from Students


--Rank partition by student

Select *,Rank() over(partition by Student_name order by Marks Desc) [RowNumber]
from Students

--DENSERank partition by Marks

Select *,DENSE_Rank() over(partition by Subject order by Marks Desc) [RowNumber]
from Students


--DenseRank partition by student

Select*,DENSE_RANK() over(partition by Student_name order by Marks Desc) [RowNumber]
from Students



