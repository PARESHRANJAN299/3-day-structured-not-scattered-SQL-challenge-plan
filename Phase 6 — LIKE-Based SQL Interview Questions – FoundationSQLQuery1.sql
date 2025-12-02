select * from sys.databases;
use employeedb
select * from sys.tables;
select * from employeetable1;

️⃣Write an SQL query to find all employee names that start with the letter "A".
select * from employeetable1
where name like 'A%'
2️⃣Write a query to fetch all names that end with the letter "n".
select * from employeetable1
where name like '%n';
3️⃣Write a query to find all customers whose name contains "ra" anywhere.
select * from employeetable1
where name like '%ra%'
4️⃣Write a query to find all records where the second character of the name is "a".
select * from employeetable1
where name like '_a%'
5️⃣Write a query to fetch all name with exactly 5 characters.
select * from employeetable1
where LEN(NAME) = 5 -- oNLY FOR sql SERVER AND i AM USING sql SERVER 
6️⃣Write a query to list all employees whose names start with any letter between
A and F.
SELECT * FROM employeetable1
where name like '[A-F]%'
7️⃣Write a query to return all city names that do NOT start with A, B, or C.
--example1
select * from employeetable1
where name like '[^ABC]%'
--example2
select * from employeetable1
where name not like '[ABC]%'
8️⃣Write a query to find all usernames that contain a literal underscore _.
select * from employeetable1
where name like '%\_%' escape '\' -- only work on SQL server and i am also using sql server
9️⃣Write a query to fetch all records where the field contains any special
character: *, #, or ~.
--Example1 
select * from employeetable1
where name like '%[*#~]%'
--Example2
select * from employeetable1
where name like '%~%' OR
 name like '%#%'  OR 
  name like '%*%'
🔟 Write a query to fetch rows where the description contains both “data” and
“sql”.
-- Description Column we dont have, Please consider name column as description column.
select * from employeetable1
where name like '%data%' AND name like '%sql%'

--Final Result (after correction)
✅ 10 out of 10 queries are correct
No mistakes now.
Your LIKE pattern basics are fully mastered.
