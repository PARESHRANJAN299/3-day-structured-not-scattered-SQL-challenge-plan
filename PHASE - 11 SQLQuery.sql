Here are the best 15 Group By practice questions
— 5 Easy + 5 Medium + 5 Hard
Using the table:
--employees(emp_id, full_name, age, city, department, salary, joining_date)

✅ 5 EASY — Group By Questions
Find how many employees are in each city.
select city, count(*) as total_employee
from employeetable1
group by city;
Find how many employees are in each department.
select Department, count(*) as total_employee
from employeetable1
group by Department;
Find the average salary for each department.
select Department, AVG(salary) as average_salary
from employeetable1
group by Department;
Find the total salary paid in each city.
select city, sum(salary) as total_salary
from employeetable1
group by city;
Find the maximum salary in each department.
select Department, MAX(salary) as highest_salary
from employeetable1
group by Department;
✅ 5 MEDIUM — Group By Questions
Find the number of employees in each department who are older than 30.
select
department, COUNT(*) total_employee
from employeetable1
where age>30
group by department;

Find the average age of employees in each city.
select city, avg(age) as avg_age_employee
from employeetable1
group by city;
Find the highest salary in each city.
select city, MAX(salary) as highest_salary
from employeetable1
group by city
Count employees who joined in each year.
select 
Joining_date, COUNT(*) as count_employee
from employeetable1
group by Joining_date
Find the total salary for each department where total salary > 1,00,000 (requires HAVING later).
select department,  sum(salary) 
from employeetable1
group by department
having sum(salary)>100000;
✅ 5 HARD — Group By Questions
Find the department with the highest number of employees.
--without having
select TOP 1
department, COUNT(*) as count_employee
from employeetable1
group by department
ORDER BY count_employee DESC;

-- if possible with having_ please let me know the logic
Find the city where the average salary is above the --overall company average.
select city, AVG(salary) as average_salary, sum(salary) _overall_company_average
from employeetable1
group by city --city wise getting avarge salary right. 
-- need guide on this--the correct query
Find the department with the youngest average age.
select TOP 1
department, AVG(age) as youngest_average_age
from employeetable1
group by department
ORDER BY youngest_average_age ASC;
Find per-year, per-department employee counts
→ Group by YEAR(joining_date) + department.
--need guide
Find the top 3 highest-paying departments (by SUM(salary)).
select TOP 3 department, SUM(salary) as total_salary
from employeetable1
group by department
ORDER by total_salary DESC;