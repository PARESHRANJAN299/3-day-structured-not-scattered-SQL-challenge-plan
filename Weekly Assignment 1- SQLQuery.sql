Here are 50 SQL Weekly Assignment Questions using only ONE table:
📌 Table Used (Single Table Assignment)
employees(emp_id, full_name, age, city, department, salary, joining_date)
No other table will be used.
🔥 50 SQL Questions (From Basic →
Intermediate → Data Domain)
Covers: SELECT, ORDER BY, DISTINCT, WHERE, AND, OR, NOT, INSERT, UPDATE, NULL, TOP,
LIKE, Wildcards, LEN, REPLACE, IN, BETWEEN, Aliases, Aggregates
✅ A. SELECT + WHERE (10 Questions)
1. Select all employees who belong to the Finance department.
select name from employeetable1
where department = 'Finance'
2. Select employees whose salary is greater than 80,000.
select * from employeetable1
where salary >80000;
3. Select employees whose age is greater than 35.
select * from employeetable1
where age >35;
4. Select employees who live in Delhi or Mumbai.
select * from employeetable1
where city in ('Delhi', 'Mumbai');
5. Select employees whose department is NOT 'HR'.
select * from employeetable1
where department NOT in ('HR');
6. Select employees whose age is between 25 and 40.
select * from employeetable1
where age between 25 and 40
7. Select employees whose city is NOT NULL.
select * from employeetable1 
where city is not null;
8. Select employees who joined after '2022-01-01'.
select * from employeetable1
where joining_date > '2022-01-01';
9. Select employees whose salary is less than 50,000.
select * from employeetable1
where salary < 50000;
10. Select employees whose department is NULL.
select * from employeetable1
where department is null;
✅ B. ORDER BY + DISTINCT (5 Questions)
11. Show all employees ordered by salary DESC.
select *  from employeetable1
order by salary DESC;
12. Show employees sorted by city ASC, then salary DESC.
SELECT * from employeetable1
ORDER BY city , salary DESC;
13. Show distinct department names.
select distinct department 
from employeetable1
14. Display top 5 highest-paid employees.
select top 5 * 
from employeetable1
order by salary DESC;
15. List employees ordered by joining_date oldest first.
select * from employeetable1
ORDER BY joining_date ASC;
✅ C. LIKE + Wildcards (10 Questions)
16. Find employees whose name starts with 'A'.
select * from employeetable1
where name like  'A%'
17. Find employees whose name ends with 'n'.
select * from employeetable1
where name like '%n'
18. Find employees whose name contains 'sh' anywhere.
select * from employeetable1
where name like '%sh%'
19. Find employees whose name contains a digit --(LIKE '%[0-9]%').
select * from employeetable1
where name like '%[0-9]%'
20. Find employees whose name has exactly 6 characters (LIKE '______').
select * from employeetable1
--where name NOT like '%[^______]%' -- more then 6 char
where name like '______'
select * from employeetable1
where LEN(name) = 6

21. Find employees whose name starts with an uppercase letter.
select * from employeetable1
where name like '[A-Z]%'
22. Find employees whose name starts with a lowercase letter.
select * from employeetable1
where name like '[a-z]%'
23. Find employees whose name contains a space.
select * from employeetable1
where name like '% %'
24. Find employees whose name ends with '.com' (mistaken email stored).
select * from employeetable1
where name like '%.com'
25. Find employees whose name starts with a vowel (A/E/I/O/U).
select * from employeetable1
where name like '[AEIOUaeiou]%' 
26. Find employees whose name starts with a vowel and END with a vowel(A/E/I/O/U).
select * from employeetable1
where name like '[AEIOUaeiou]%' AND name like '%[AEIOUaeiou]'
🟢 FINAL SCORE NOW
⭐ 26 / 26 Correct ⭐
Absolutely perfect — all the queries are correct now.
✅ D. LEN + REPLACE (5 Questions)
26. Find employees whose full_name length is more than 15 characters.
select * from employeetable1
where LEN(name)>15;
27. Count number of times 'a' appears in each name using REPLACE.
select name,  LEN(name) - LEN(REPLACE(name, 'a', '')) as count_Of_a
from employeetable1
28. Find employees whose name contains more than 1 space.
select 
29. Replace spaces in full_name with underscores and display output.
30. Display full_name and show its character length in another column.

✅ E. IN Operator (5 Questions)
31. Find employees whose city is in
('Delhi', 'Bangalore', 'Hyderabad').
select *  from employeetable1
where city in ('Delhi','Bangalore','hyderbad');
32. Find employees whose department is in
('IT', 'Finance').
select * from employeetable1
where department in ('IT', 'Finance')
33. Find employees whose age is in
(25, 30, 35, 40).
select * from employeetable1
where age in (25,30,35,40);
34. Find employees whose salary is one of
(50000, 65000, 80000).
select * from employeetable1
where salary in (50000, 65000, 80000);
35. Find employees whose city is NOT in
('Mumbai', 'Pune').
select * from employeetable1
where city in ('Mumbai', 'Pune');
✅ F. BETWEEN (5 Questions)
36. Find employees whose salary is BETWEEN 60,000 and 120,000.
 select * from employeetable1
 where salary between 60000 and 120000;
37. Find employees aged BETWEEN 20 and 30.
select * from employeetable1
where age between 30 and 30;
38. Find employees who joined BETWEEN '2020-01-01' and '2022-12-31'.
select * from employeetable1
where Joining_date between '2020-01-01' and '2022-12-31'
39. Find employees with emp_id BETWEEN 100 and 200.
select * from employeetable1
where age BETWEEN 100 AND 200;
40. Find employees whose name length is between 5 and 12 characters.
SELECT * FROM employeetable1
where LEN(name) = 5  or  LEN(name)= 12
-- we can also use like but this is the lentgh syntax
✅ G. NULL Handling (5 Questions)
41. Select employees whose salary is NULL.
select * from employeetable1
where salary is null;
42. Update all NULL cities to 'Unknown'.
update employeetable1
SET city = 'Unknown' where city is null;
43. Update all NULL departments to 'Not Assigned'.
update employeetable1
SET department = 'Not Assigned' where city is null;
44. Insert an employee where department is NULL.
INSERT into employeetable1 (emp_id, name, age,city, salary,email, Joining_date)
values (12,'Priyanka',22,'Bangalore',22000, 'priyanka1@gmail.com', '2024-12-25')
45. Select employees whose joining_date is NOT NULL.
✅ H. INSERT, UPDATE (5 Questions)
46. Insert a new employee with sample values.
INSERT INTO employeetable1 (emp_id) values (11);
-- select * from employeetable1(verifiy the data)
47. Update salary of employees in IT department → increase by 10%.
update employeetable1
SET salary = 10*100%  where department = 'IT'  -- i never slove such questions, please guide me 
48. Update all employees living in Delhi → change city to 'New Delhi'.
update employeetable1
set city = 'New Delhi' where city = 'Delhi';
49. Update employees whose salary < 40,000 → increase salary to 40,000.
--i never slove such questions, please guide me 
50. Insert a new employee whose name contains a special character.
insert INTO employeetable1 (emp_id, name) values (13, 'Deepak S@hu')
🎉 Your 50-Question Weekly Assignment Is
Ready!

⭐ FINAL RESULT → 39/50 Correct

Very good!
Only mistakes were in LEN, REPLACE, BETWEEN, NULL handling, UPDATE % increase.