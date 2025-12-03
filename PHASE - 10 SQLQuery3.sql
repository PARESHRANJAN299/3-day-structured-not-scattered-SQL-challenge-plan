SELECT department,
       COUNT(*) AS emp_count,
       SUM(salary) AS total_salary,
       AVG(salary) AS avg_salary,
       MAX(salary) AS max_salary
FROM employeetable1
GROUP BY department;


select city,
COUNT(emp_id) as Emp_count,
SUM(salary) as total_salary,
AVG(salary) as avg_salary,
MAX(salary) as Max_salary
from employeetable1
group by city;

alter table employeetable1
ADD Joining_date DATE;
select * from employeetable1
/*
UPDATE employeetable1 SET joining_date = '2018-02-15' WHERE emp_id = 1;
UPDATE employeetable1 SET joining_date = '2019-06-10' WHERE emp_id = 2;
UPDATE employeetable1 SET joining_date = '2020-01-20' WHERE emp_id = 3;
UPDATE employeetable1 SET joining_date = '2021-03-05' WHERE emp_id = 4;
UPDATE employeetable1 SET joining_date = '2022-11-18' WHERE emp_id = 5;

UPDATE employeetable1 SET joining_date = '2019-09-09' WHERE emp_id = 6;
UPDATE employeetable1 SET joining_date = '2020-12-25' WHERE emp_id = 7;
UPDATE employeetable1 SET joining_date = '2021-07-30' WHERE emp_id = 8;
UPDATE employeetable1 SET joining_date = '2023-02-11' WHERE emp_id = 9;
UPDATE employeetable1 SET joining_date = '2024-01-01' WHERE emp_id = 10; */

select * from employeetable1;
🔥 PART 1 — 10 Aggregation Questions (No GROUP BY)

Focus: COUNT, SUM, AVG, MIN, MAX

1. Find total number of employees.
select count(*) as total_empl_count from employeetable1;
2. Find the total salary paid to all employees.
select 
count(*) as Total_Employee_count , SUM(salary) as total_employee_salary
from employeetable1 
3. Find the highest salary in the company.
select MAX(salary) as highest_Paid_salary
from employeetable1
4. Find the lowest salary in the company.
select MIN(salary) as Lowest_salary
from employeetable1
5. Find the average salary of all employees.
select AVG(salary) as average_salary from employeetable1;
6. Count how many employees live in Delhi.
select count(*) as empl_count
from employeetable1
where city in ('Delhi')
7. Calculate the average age of all employees.
select avg(age) as Employee_average_age
from employeetable1;

8. Find the earliest joining date in the company.
select MIN(Joining_date) as recent_joining from employeetable1
9. Find the most recent joining date.
select MAX(Joining_date) as recent_joining from employeetable1
10. Count how many employees have a salary greater than 50,000.
select count(*) as Total_employee_Count
from employeetable1
where salary>50000;

🔥 PART 2 — 10 Group By Questions (NO HAVING yet)
Focus: grouping only.
1. Print number of employees in each city.
select city, count(*) as total_employee
from employeetable1
group by city;
2. Print number of employees in each department.
select department, count(*) as count_employee
from employeetable1
group by department;
3. Find total salary paid in each department.
select department, sum(salary)as total_salary
from employeetable1
group by department;
4. Find average salary for each department.
select department, avg(salary) as total_average_salary
from employeetable1
group by department;
5. Find highest salary in each city.
select city, MAX(salary) as highest_salary
from employeetable1
group by city;
6. Find lowest age in each department.
select department, MIN(age) as lowest_age
from employeetable1
GROUP BY department;
7. Count employees joined on each joining_date.
select Joining_date, COUNT(Joining_date) as total_joined_count
from employeetable1
group by joining_date
8. Count employees grouped by age.
select age, count(*) as total_empl
from employeetable1
group by age;
9. Show total number of employees in each city sorted by city name.
Select city, COUNT(*) as total_Employee_Count
from employeetable1
group by city 
order by city ASC;
10. Find total salary grouped by city.
select city, SUM(salary) as total_salary
from employeetable1
group by city;