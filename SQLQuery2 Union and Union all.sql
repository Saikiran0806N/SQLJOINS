create table append1 (C1 int,C2 nvarchar(255),C3 int)
insert into append1 values (1,'A',7),
(2,'B',8),
(3,'C',9)



create table append2 (C1 int,C2 nvarchar(255),C3 int)
insert into append2 values (11,'AA',17),
(2,'B',8),
(33,'C1',91)





select * from append1

Select * from append2

select C1,C2,C3 from append1
Union all
select C1,C2,C3 from append2

select C1,C2,C3 from append1
Union 
select C1,C2,C3 from append2