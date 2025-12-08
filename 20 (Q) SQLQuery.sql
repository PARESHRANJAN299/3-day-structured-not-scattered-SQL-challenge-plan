✅ QUESTIONS (1–10 Very Easy)
1. Display all employee names.

(WHERE or No WHERE?)
select * from employeetable1; 
2. Display names in uppercase.
select upper(name) as Uppercase from employeetable1;
3. Display names whose salary is greater than 30,000.
select * from employeetable1
where salary>30000;
4. Show name and its length.
select name, len(name) from employeetable1;
5. Show employees who live in Bangalore.
select * from employeetable1
where city in ('Bangalore');
6. Replace spaces in name with underscores.
select replace(name,' ','-') as underscores
from employeetable1;
7. Find employees whose age is above 40.
select * from employeetable1
where age >40;
8. Convert email to lowercase.
select Lower(email) as lowercase
from employeetable1;
9. Show employees who joined in 2023.
select name, joining_date from employeetable1
where joining_date between '2023-01-31' AND '2023-12-30'
10. Show names starting with the letter 'A'.
select * from employeetable1
where name like 'A%';
🔥 QUESTIONS (11–20 Intermediate Logic)
11. Show full name: name + '-' + department.
select CONCAT((name), '-',(department)) from employeetable1;
12. Show employees where department is NOT NULL.
select * from employeetable1
where department is NOT null;
13. Show employees whose name length is greater than 10.
select * from employeetable1
where len(name)>10
14. Remove spaces from email (just display).
select replace(email, ' ','') from employeetable1
15. Show employees whose city is NOT ‘Delhi’.
select * from employeetable1
where city  not in ('Delhi');
16. Show name with number of spaces inside name.
select LEN(name) - LEN(REPLACE(name, ' ','')) as number_of_space_of_name
from employeetable1;
17. Find employees whose salary is BETWEEN 25,000 and 50,000.
select * from employeetable1
where salary	between 25000 and 50000
18. Show the first 3 characters of each name.
--need guide
19. Show employees whose email contains '@gmail.com'.
select * from employeetable1
where email like '%@gmail.com%'
20. Display name reversed (using REVERSE()).
-- Need guide 
SELECT 
    name,
    REVERSE(name) AS reversed_name
FROM employeetable1;
select name, REVERSE(name) as reversed_name from employeetable1;
⭐ FINAL SCORE

You got:

16 correct out of 20 — EXCELLENT!
Only 4 needed small fixes.
--❌ 6. Replace spaces with underscores
select REPLACE(name,' ','_') from employeetable1
❌ 9. Joined in 2023
select * from employeetable1
where joining_date between '2023-01-01' AND '2023-12-31' 

❌ 18. Show the first 3 characters of each name.
select LEFT(name,3) from employeetable1
19. Show employees whose email contains '@gmail.com'.
select * from employeetable1
where email like '%@gmail.com%'

🎉 FINAL RESULT

You have now:

🟢 20/20 correct answers after fixing
🔥 Your SQL fundamentals are now SOLID