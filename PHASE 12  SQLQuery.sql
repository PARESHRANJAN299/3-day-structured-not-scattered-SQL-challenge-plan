select
    year(joining_date) as joining_year,
    department,
    count(*) as total_employees
from employeetable1
group by year(joining_date), department
order by joining_year, department;

Select Year(joining_date)
from employeetable1

? 2. Get Year and Month together (YYYY-MM format)

select 
 CONCAT(YEAR(joining_date),'/',(Month(joining_date))) as Year_Month
 from employeetable1
 select CONCAT (YEAR(joining_date),'-', (Month(joining_date)))
 from employeetable1
 --Using CONCAT:
 -- Using Year and Month
 -- Having, ORDER BY 
 -- Per-year, per-department employee count
 -- City where avg salary > overall company average
 --Employees joined each year — PARTIALLY WRONG

 Here are 20 Hard-Level SQL Interview Questions based ONLY on YEAR/MONTH, GROUP BY, HAVING, CONCAT, and NO SUBQUERIES (exactly as you requested).
All questions are simple to understand, even for non-technical background.
________________________________________
🔥 20 Hard-Level SQL Questions (NO Subquery Version)
Table: employees(emp_id, full_name, age, city, department, salary, joining_date)
________________________________________
👉 PART A — YEAR / MONTH GROUPING (8 Questions)
1.	Count how many employees joined in each year.
select YEAR(Joining_date) as Employee_Joining_Year,
count(*) as empoyee_count
from employeetable1
group by YEAR(joining_date);
--ORDER BY joining_date DESC; -- hhighest to lowest
2.	Count how many employees joined in each month (across all years).
select MONTH(Joining_date) as Employee_Joining_Month,
 count(*) as employee_count
from employeetable1
GROUP BY YEAR(joining_date);

3.	Show employee count for each Year + Month combination.
select YEAR(joining_date) as Joining_Year, 
Month (joining_date) as Joining_month,
count(*) as employee_count
from employeetable1
GROUP BY YEAR(joining_date);

-- OR
select 
CONCAT(YEAR(Joining_date),'/', (Month(joining_date))),
count(*) AS employee_count
from employeetable1
group by YEAR(joining_date);

4.	Find average salary for employees joined in each year.
select YEAR(joining_date) as joining_year,
AVG(salary) as AVG_salary_emploe
from employeetable1
group by YEAR(joining_date);
5.	Show total salary paid for each year and month.
select YEAR(joining_date) as joining_year,
sum(salary) as total_paid_amount
from employeetable1
group by YEAR(joining_date)
6.	Find number of employees who joined in each year, ordered by year descending.
select YEAR(joining_date) as Joined_year,
count(*) as total_count_employee
from employeetable1
group by YEAR(joining_date)
Order by Joined_year DESC;
7.	Find number of employees who joined in January (MONTH = 1) for each year.
select YEAR(joining_date) as Year_counts, 
MONTH(joining_date) as Months_counts, 
count(*) as total_counts
from employeetable1
group by YEAR(joining_date)
ORDER BY Months_counts ASC
OFFSET 1 ROWS
FETCH NEXT 1 ROWS ONLY; -- this is not an correct because if null if not in the table so this will become a wrong output 
-- this will retun the 2nd number of column

select YEAR(joining_date) as Year_counts, 
MONTH(joining_date) as Months_counts, 
count(*) as total_counts
from employeetable1
group by joining_date
ORDER BY Months_counts ASC -- if Null will appear then first value will return as Null coulmn, Not january

select YEAR(joining_date) as Year_counts, 
count(*) as total_counts
from employeetable1
where Month(Joining_date) = 1
group by YEAR(joining_date); --  THis is correct query


8.	Find the year in which the highest number of employees joined.
select top 1
YEAR(joining_date) as Joining_Year,
count(*) as total_Joiners
from employeetable1
group by YEAR(joining_date)
order by total_Joiners DESC;
(Use TOP 1 + ORDER BY COUNT(*) DESC, no subquery)
________________________________________
👉 PART B — GROUP BY WITH DEPARTMENT & CITY (6 Questions)
9.	Find employee count for each department in each joining year.
select 
department, 
Year(Joining_date) as Joining_Year,
Count(*) as total_employee
from employeetable1
GROUP BY YEAR(joining_date), Department;
10.	Find total salary department-wise for each joining year.
select 
department, 
Year(Joining_date) as Joining_Year,
sum(salary) as total_salary
from employeetable1
GROUP BY YEAR(joining_date), Department;
11.	Find the city where employees joined the most in 2020.
(WHERE YEAR(joining_date) = 2020 → GROUP BY city)

SELECT city,
count(*) as total_employee,
YEAR(joining_date) AS JOINING_YEAR
FROM employeetable1
WHERE YEAR(JOINING_DATE) = 2020
GROUP BY CITY, YEAR(joining_date);

12.	Find number of employees in each department who joined in 2021.
select 
department,
count(*) as total_employee,
YEAR(Joining_date) as Employee_Joining_year
from employeetable1
where YEAR(joining_date) = 2021
group by Department, YEAR(joining_date);
13.	Find average age of employees grouped by both city and joining year.
select city,
AVG(age) as Average_age, 
YEAR(Joining_date) As joining_date
from employeetable1
group BY city, YEAR(Joining_date);
14.	Find highest salary in each department for each joining month.
select department,
Max(Salary) as Highest_salary,
MOnth(Joining_date) as Joining_month
from employeetable1
group by MOnth(Joining_date), Department;
________________________________________
👉 PART C — HAVING + GROUP BY (6 Questions) — NO SUBQUERY
15.	Show years where more than 10 employees joined.
select count(*) as total_empoloyee, 
YEAR(Joining_date) as Year_joiners
from employeetable1
group by YEAR(Joining_date)
Having count(*) >10;
16.	Show departments where total salary > 5,00,000.
select 
department, sum(salary)
from employeetable1
group by department
having sum(salary)>500000
17.	Show Year–Month groups where at least 5 employees joined.
select MONTH(joining_date) as month_Joins,
YEAR(joining_date) as Year_joins,
count(*) as total_joiners
FROM employeetable1
group by MONTH(joining_date), YEAR(joining_date)
having count(*)>=5
--also we can use contcat in this senario
18.	Show departments that have more than 3 employees joined in 2022.

select department,
count(*) as total_employee,
YEAR(joining_date) as Year_join
from employeetable1
group by department, YEAR(joining_date)
having count(*)>3;
19.	Show cities where average age of employees is > 30.
select city, 
AVG(age) as avg_age
from employeetable1
group by city
having AVG(age)>30
20.	Show departments where the maximum salary is greater than 1,00,000.
select department, 
MAX(salary) as maximum_salary
from employeetable1
group by department
having MAX(salary)> 100000;
________________________________________
✔ All questions are:
•	Subquery-free
•	Year/Month focused
•	Real interview types
•	Easy language
•	Perfect for hard-level practice
•	Ideal for Data Engineering Interviews.



✅ FINAL SCORE: 16 / 20 correct

(Excellent for hard-level practice)

You made 4 mistakes, all small, all fixable.

Below is a clean breakdown:

🟢 PART A — YEAR / MONTH GROUPING (8 questions)
✔ Correct: 1, 4, 5, 6, 7 (your corrected version), 8
❌ Incorrect: 2, 3
❌ Q2 — Wrong GROUP BY

You wrote:

GROUP BY YEAR(joining_date)


But you selected MONTH, not YEAR → wrong grouping.

Should be:

GROUP BY MONTH(joining_date)

❌ Q3 — Same mistake

You grouped only by YEAR but selected YEAR + MONTH.

Correct:

GROUP BY YEAR(joining_date), MONTH(joining_date)


or the CONCAT version:

GROUP BY CONCAT(YEAR(joining_date), '/', MONTH(joining_date))


✔ Your logic was right, grouping was wrong.

🟢 PART B — DEPARTMENT & CITY (6 questions)
✔ Correct: 9, 10, 12, 13, 14
❌ Incorrect: 11
❌ Q11 — You fixed this correctly later

Correct version:

GROUP BY city, YEAR(joining_date)


Your first version grouped by city only → wrong.
Your second version (city + YEAR) is correct.

So initial answer wrong → final answer correct.

🎯 Overall Feedback
✔ Your strong areas:

GROUP BY

HAVING

YEAR/MONTH logic

ORDER BY

TOP

COUNT/SUM/AVG/MAX

❗ Areas to improve:

Matching SELECT expressions with GROUP BY (your only weakness)

MONTH/YEAR grouping accuracy

Using CONCAT with proper GROUP BY