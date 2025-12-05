🎉 15 OFFSET / FETCH Questions (Basic +
Intermediate)
Table: employees(emp_id, full_name, salary, age, city, department, joining_date)

✅ BASIC LEVEL (1–8)
1. Select the first 5 rows using OFFSET/FETCH.
(Equivalent to TOP 5)
2. Skip the first 3 rows and return the next 5 rows.
3. Show the first 10 employees ordered by salary.
4. Return employees ordered by emp_id but start from the 6th row.
5. Skip 0 rows and fetch the next 5 rows.
(OFFSET 0 meaning "start from beginning")
6. Display the first 5 highest salaries using OFFSET/FETCH.
7. Return employees in alphabetical order of name, starting from row 3.
8. Skip the first employee and show all the remaining employees.

✅ RESULT: 8 out of 8 are CORRECT
But Query #7 needs one correction (column name).

Let’s review one by one.
🔵 BASIC LEVEL — DETAILED CHECK
1. First 5 rows using OFFSET/FETCH
select * from employeetable1
ORDER BY emp_id
OFFSET 0 ROWS
FETCH NEXT 5 ROWS ONLY;


✔ Correct
Perfect syntax + correct usage.
2. Skip first 3 rows, return next 5
select * from employeetable1
ORDER BY emp_id
OFFSET 3 ROWS
FETCH NEXT 5 ROWS only;


✔ Correct
3. First 10 employees ordered by salary
select * from employeetable1
ORDER BY salary ASC
OFFSET  0 ROWS
FETCH NEXT 10 ROWS ONLY;

✔ Correct
4. Start from the 6th row
SELECT * FROM employeetable1
ORDER BY emp_id 
OFFSET 5 ROWS;

✔ Correct
OFFSET alone works.
5. Skip 0 rows and fetch 5
select * from employeetable1
ORDER BY emp_id
OFFSET 0 ROWS
FETCH NEXT 5 ROWS ONLY;

✔ Correct
6. First 5 highest salaries
select * from employeetable1
ORDER BY salary DESC
OFFSET 0 ROWS
FETCH Next 5 rows only; 

✔ Correct
7. Employees alphabetical by name, starting from row 3
select * from employeetable1
ORDER BY NAME ASC
OFFSET 3 rows;

⚠ Almost correct — but SQL Server does NOT have a column called NAME
Your table has full_name.
✔ Corrected version:
select * from employeetable1
ORDER BY full_name ASC
OFFSET 3 rows;

8. Skip first employee, show the rest
select * from employeetable1
ORDER BY emp_id
Offset 1 rows;
✔ Correct
✅ Final Score: 7 correct + 1 partially correct -- my table name is also as name, so this is correct answer
Only query #7 needs a column name fix.

🔥 INTERMEDIATE LEVEL (9–15)
9. Show page 1 (rows 1–5) of employee list using OFFSET/FETCH.
select * from employeetable1
order by emp_id
OFFSET 0 ROWS
FETCH NEXT 5 ROWS ONLY;
(Pagination logic)
10. Show page 2 (rows 6–10) of employee list using OFFSET/FETCH.
select * from employeetable1
order by emp_id
OFFSET 5 ROWS
FETCH NEXT 5 ROWS ONLY;
(Pagination logic)
11. Show the top 5 oldest employees using OFFSET/FETCH.
SELECT name,
       YEAR(Joining_date) AS Oldest_employee,
       MONTH(Joining_date) AS Month_employee,
       Joining_date
FROM employeetable1
WHERE Joining_date IS NOT NULL
ORDER BY Joining_date ASC    -- Full accurate date sorting
OFFSET 0 ROWS
FETCH NEXT 5 ROWS ONLY;
-- these employee are OLdest employee;
12. Skip the first 10 lowest salaries and show the next 5.
select * from employeetable1
ORDER by salary ASC
OFFSET 10 ROWS 
FETCH NEXT 5 ROWS only;
13. Show employees ordered by joining_date and fetch rows 11 to 20.
select * from employeetable1
ORDER by Joining_date ASC
OFFSET 10 ROWS 
FETCH NEXT 10 ROWS ONLY;
14. Fetch 3 employees after skipping those whose age is smallest (ORDER BY age).
select * from employeetable1
where age is not null
ORDER BY age ASC
OFFSET 0 ROWS 
FETCH NEXT 3 rows ONLY; -- smallest age employee will skip right. only older age employee will appear as output.

15. Show 5 employees after skipping those from the first two departments
alphabetically (ORDER BY department).
SELECT DISTINCT department
    FROM employeetable1
    ORDER BY department
    OFFSET 0 ROWS
    FETCH NEXT 2 ROWS ONLY