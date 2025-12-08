DAY 1 — EXPLANATION + SLOW PRACTICE (Understanding Phase)
Goal: Build 100% clarity.
1️⃣Study these topics again (slowly):
 WHEN to use NOT IN -- 
 BETWEEN correct usage -- Range
 LEN + REPLACE -- 
 IS NULL vs = NULL
 UPDATE queries syntax
 Basic INSERT patterns

select 
LEN(name) from employeetable1;

select len(REPLACE(name,'a', ' ')),
count (*) as count_removed_a from employeetabl1

--Completion time: 2025-12-07T12:46:58.6676112+05:30
--Msg 8120, Level 16, State 1, Line 14
--Column 'employeetable1.name' is invalid in the select list because it is not contained in either an aggregate function or the GROUP BY clause.
--Completion time: 2025-12-07T12:46:58.6676112+05:30

select CONCAT(Month(Joining_date), '-' ,(Year(Joining_date))) from employeetable1


✔ LEN + REPLACE
28. Find names with more than 1 space
select * from employeetable1
where LEN(name) - LEN(replace(name,' ',''))>=1

29. Replace spaces with underscores
SELECT 
    REPLACE(name, ' ', '_') AS name_with_underscores
FROM employeetable1;

30. Display name + its length
select name, LEN(name) as lenght_of_name
from employeetable1;
where LEN(name)>10

“Display names whose length is more than 10 characters”
select name
from employeetable1
where LEN(name)>10

✔ IN
35. City NOT IN ('Mumbai','Pune')select * from employeetable1where city NOT IN ('Mumbai','Pune')✔ BETWEEN
37. Age between 20–30
select * from employeetable1
where age between 20 AND 30
38. emp_id between 100–200
select * from employeetable1
where emp_id between 100 AND 200
39. Name length between 5 and 12
select * from employeetable1
where LEN(NAME) between 5 AND 12;

--✔ LEN + REPLACE
--28. Find names with more than 1 space
SELECT * from employeetable1
where LEN(name) - LEN(replace(name,' ',''))>1
--29. Replace spaces with underscores
select REPLACE(name,' ','_') as underscores from employeetable1;
--30. Display name + its length
select name, LEN(NAME) from employeetable1;
--✔ IN
--35. City NOT IN ('Mumbai','Pune')
select *  
--✔ BETWEEN
--37. Age between 20–30
--38. emp_id between 100–200
--39. Name length between 5 and 12
--✔ NULL
--43. Update NULL department
--44. Joining_date NOT NULL
--✔ UPDATE
--47. Increase IT salary by 10%
--48. Salary < 40000 → set 40000