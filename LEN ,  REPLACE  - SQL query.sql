✔ LEN + REPLACE
28. Find names with more than 1 space
select * from employeetable1 
where LEN(name)-LEN(REPLACE(name,' ',''))>1 
29. Replace spaces with underscores
select REPLACE(name, ' ','_') from employeetable1;
30. Display name + its length
select LEN(name)

✔ IN
35. City NOT IN ('Mumbai','Pune')
select * from employeetable1
where City NOT IN ('Mumbai','Pune')
✔ BETWEEN
37. Age between 20–30
select * from employeetable1
where age between 20 and 30;
38. emp_id between 100–200
select emp_id from employeetable1
where emp_id between 100 and 200; 
39. Name length between 5 and 12
select * from employeetable1
where len(name) between 5 and 12;
✔ UPDATE
47. Increase IT salary by 10%

UPDATE employeetable1
set salary = salary *1.10 where department = 'IT';

select * from employeetable1