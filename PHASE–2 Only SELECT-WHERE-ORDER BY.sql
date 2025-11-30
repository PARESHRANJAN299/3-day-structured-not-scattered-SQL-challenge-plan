✅ DAY-2 SQL PRACTICE (20 Questions)
use employeedb
select * from employeetable1
drop table employees -- delete the table
Topic: SELECT + WHERE + ORDER BY only

Q1. Show all employee details
select * from employeetable1
Q2. Show only name and salary of all employees.
select name, salary
from employeetable1
Q3. Show employees who are older than 30.
select name, age from employeetable1
where age>30
Q4. Show employees whose salary is greater than 50,000.
select name, salary from employeetable1
where salary>50000
Q5. Show employees who live in Bangalore.
select name, city from employeetable1
where city in ('Bangalore')
Q6. Show employees who work in the IT department.
select * from employeetable1
where department in ('IT')
Q7. Show employees whose age is less than 25.
select * from employeetable1
where age <25
Q8. Show employees whose salary is less than or equal to 40,000.
select * from employeetable1
where salary <=40000
Q9. Show employees who are exactly 30 years old.
select * from employeetable1
where age = 30;
Q10. Show employees who are NOT from Mumbai.
select * from employeetable1
where city not in ('Mumbai')
Q11. Show employees NOT from the HR department.
select * from employeetable1
where department not in ('HR')
Q12. Show employees with salary BETWEEN 40,000 and 70,000.
select * from employeetable1
where salary between 40000 AND 70000;
Q13. Show employees whose city is either Delhi OR Chennai.
select * from employeetable1
where city = 'Delhi' OR CITY = 'Chennai'

Q14. Show employees whose department is ‘Finance’.
SELECT * FROM employeetable1
WHERE department = 'Finance'
Q15. Show employees sorted by salary (Low → High).
SELECT * FROM employeetable1
ORDER BY salary asc;
Q16. Show employees sorted by age (High → Low).
SELECT * FROM employeetable1
ORDER BY age desc;
Q17. Show top 5 highest salaried employees.
SELECT TOP 5(SALARY) AS highest_salaried FROM employeetable1
order by salary DESC;
Q18. Show employees sorted alphabetically by name.
Q19. Show employees whose city is NOT NULL.
Q20. Show employees whose salary is NOT equal to 60,000.