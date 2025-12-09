✅ QUESTIONS (1–10 Very Easy)
1. Display all employee names.

(WHERE or No WHERE?)
2. Display names in uppercase.
select Upper(name) as uppercase from employeetable1;
3. Display names whose salary is greater than 30,000.
select * from employeetable1
where salary > 30000;
4. Show name and its length.
select name, len(name) as Length_of_name
from employeetable1;
5. Show employees who live in Bangalore.
select * from employeetable1
where city in ('Bangalore');

6. Replace spaces in name with underscores.
select Replace(name,' ','_') as underscores from employeetable1;
7. Find employees whose age is above 40.
select * from employeetable1 -- row level fillter
where age >40;
8. Convert email to lowercase.
select lower(email) as lowercase_email
from employeetable1;
9. Show employees who joined in 2023.
select * from employeetable1
where joining_date between '2023-01-01' AND '2023-12-31'
10. Show names starting with the letter 'A'.
select * from employeetable1
where name like 'A%'

🔥 QUESTIONS (11–20 Intermediate Logic)

11. Show full name: name + '-' + department.
select concat(name,'-',department) as full_Department
from employeetable1;
12. Show employees where department is NOT NULL.
select * from employeetable1
where department is not null;
13. Show employees whose name length is greater than 10.
select * from employeetable1 -- row Level fillter
where len(name)>10;
14. Remove spaces from email (just display).
select replace(email,' ','') as removed_email_space
from employeetable1;
15. Show employees whose city is NOT ‘Delhi’.

select * from employeetable1
where city not in ('Delhi');

16. Show name with number of spaces inside name.
select LEN(name)- LEN(REPLACE(name, ' ','')) as count_space
from employeetable1;

17. Find employees whose salary is BETWEEN 25,000 and 50,000.
select * from employeetable1
where salary between 25000 AND 50000
18. Show the first 3 characters of each name.
SELECT LEFT(NAME,3) AS first_char from employeetable1;

19. Show employees whose email contains '@gmail.com'.
select * from employeetable1
where email like '%@gmail.com%'
20. Display name reversed (using REVERSE()).
select name, REVERSE(name) as reverse_name from employeetable1;

🎉 TOTAL SCORE: 20/20
⭐ 0 mistakes
⭐ 2 small improvements suggested