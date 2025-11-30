•	Mixed SELECT + WHERE + ORDER BY
•	Use table: employeetable1(id, name, age, city, department, salary, email)
________________________________________PHASE-3 SQL PRACTICE — 50 QUESTIONS
(Focused on TOP + NOT + WHERE + ORDER BY)
use employeedb
select * from employeetable1
________________________________________
🔴 A. TOP Operator (20 Questions)
1.	Select the top 3 highest-paid employees.
select top 3 name, salary from employeetable1
ORDER BY salary DESC;
2.	Select the top 5 oldest employees.
SELECT TOP 5 name, age  FROM employeetable1
ORDER BY age desc;
3.	Select the top 10 employees with the lowest salary.
SELECT TOP 10 name, salary
FROM employeetable1
ORDER BY salary ASC;
4.	Select the top 2 youngest employees.
SELECT TOP 2 name, age FROM employeetable1
ORDER BY age ASC;
5.	Select the top 4 employees with the highest age.
SELECT TOP 4 name, age FROM employeetable1
ORDER BY age DESC;
6.	Select the top 6 employees by salary (high → low).
SELECT TOP 6 NAME, salary FROM employeetable1
ORDER BY salary desc;
7.	Select the top 8 employees by salary (low → high).
SELECT TOP 8 NAME, SALARY FROM employeetable1
ORDER BY salary ASC;
8.	Select the top 5 employees with the shortest name length.
SELECT TOP 5 name from employeetable1
order by name asc;

9.	Select the top 3 employees whose salary is above 60,000.
select top 3 name, salary  from employeetable1
where salary > 60000
order by salary DESC;
10.	Select the top 5 employees who are from Bangalore.
select top 5 name from employeetable1
where city = 'Bangalore'
11.	Select the top 7 employees sorted by city.
select top 7 name, city from employeetable1
order by city asc;
12.	Select the top 9 employees sorted by name.
select top 9 name from employeetable1
order by name ASC;
13.	Select the top 1 employee who is oldest.
select top 1 name, age from employeetable1
order by age DESC;
14.	Select the top 1 employee earning the highest salary.
select top 1 name, salary from employeetable1
order by salary DESC;
15.	Select the top 2 employees who are from Delhi.
select top 2 name, city from employeetable1
where city = 'Delhi'

16.	Select the top 3 employees whose age is between 25 and 35.

select top 3 name, age from employeetable1
where age between 25 and 35 
order by age DESC;

17.	Select the top 10 employees whose salary is not equal to 50,000.

select top 10 name, salary from employeetable1
where salary != 50000
order by salary DESC;
18.	Select the top 4 employees from the HR department.

select top 4 name from employeetable1
where department = 'HR'

19.	Select the top 5 employees sorted by age (youngest → oldest).
select top 5 name, age from employeetable1
order by age ASC;
20.	Select the top 6 employees sorted by name (Z → A).
select top 6 name from employeetable1
order by name DESC;


Q8 -- lenght not studied 
________________________________________
🔵 B. NOT Operator (15 Questions)
21.	Select employees who are NOT from the IT department.
--example 1,2,3 
select * from employeetable1
where department != 'IT'
select * from employeetable1
where department <> 'IT'
select * from employeetable1
where department not in ('IT')
22.	Select employees who are NOT living in Mumbai.
select * from employeetable1
where city not in ('Mumbai')
23.	Select employees whose salary is NOT greater than 70,000.
--example 1,2
select * from employeetable1
where salary <70000 -- logic is correct but sysntex it wrong as per not opertor 
select * from employeetable1
where not salary>70000;
24.	Select employees whose age is NOT less than 30.
--example : 1,2,3
select * from employeetable1
where age >= 30; -- including 30
select * from employeetable1
where age > 30; -- without 30
select * from employeetable1
where NOT age <= 30 -- THIS IS ALSO CORRECT 
25.	Select employees whose department is NOT ‘Finance’.
select * from employeetable1
where department not in ('Finance')
26.	Select employees whose city is NOT Delhi or Chennai.
select * from employeetable1
where city not in ('Delhi', 'Chennai');
27.	Select employees whose salary is NOT between 40,000 and 60,000.
select * from employeetable1
where not salary between 40000 AND 60000
28.	Select employees whose name is NOT ‘Rahul’.
select * from employeetable1
where name not in ('Rahul')
29.	Select employees whose age is NOT equal to 25.
select * from employeetable1
where age != 25;
30.	Select employees whose salary is NOT 50,000.
select * from employeetable1
where salary <> 50000
31.	Select employees who are NOT older than 40.
select * from employeetable1
where not age>40
32.	Select employees who do NOT have NULL city.
select * from employeetable1
where city is not null;
33.	Select employees whose salary is NOT less than or equal to 45,000.
--example 1,2
select * from employeetable1
where salary>45000
select * from employeetable1
where not salary<=45000
34.	Select employees who are NOT from the HR or Admin department.
select * from employeetable1
where department not in ('HR', 'Admin')
35.	Select employees whose city is NOT in (‘Delhi’, ‘Chennai’, ‘Bangalore’).
select * from employeetable1
where city not in ('Delhi', 'Chennai', 'Bangalore')

NOT Operator Score: 15 / 15 ✔✔✔
You mastered NOT completely. Excellent.
________________________________________
C. SELECT + WHERE + ORDER BY — Mixed (15 Questions)

36.	Select all employees sorted by name A → Z.
select * from employeetable1
order by name asc;
37.	Select all employees sorted by salary high → low.
select * from employeetable1
order by salary DESC;
38.	Select all employees sorted by age low → high.
select * from employeetable1
order by age ASC;
39.	Select employees who are older than 35.
select * from employeetable1
where age >35;
40.	Select employees whose salary is above 55,000.
select * from employeetable1
where salary > 55000;
41.	Select employees whose city is ‘Chennai’.
select * from employeetable1
where city = 'Chennai'
42.	Select employees who work in the HR department.
select * from employeetable1
where department in ('HR')
43.	Select employees whose name ends with the letter ‘l’. (No LIKE → skip, don’t solve yet)
select * from employeetable1
where name like '%l'
-- answer is correct but no in the part of this topic.
44.	Select employees aged between 20 and 30.
select * from employeetable1
where age between 20 and 30
45.	Select employees whose salary is below 30,000.
select * from employeetable1
where salary <30000
46.	Select all employees ordered by city A → Z.
select * from employeetable1
order by city ASC;
47.	Select all employees ordered by department Z → A.
select * from employeetable1 order by department DESC;
48.	Select employees whose email is NOT NULL.
select * from employeetable1
where email is not null;
49.	Select employees NOT from Bangalore and NOT from Mumbai.
select * from employeetable1
where city not in ('Bangalore', 'Mumbai')
50.	Select top 5 employees NOT belonging to the Sales department.
select top 5 name, department from employeetable1
where department not in ('Sales')

________________________________________
Phase-3 Target
•	Solve all 50 questions
