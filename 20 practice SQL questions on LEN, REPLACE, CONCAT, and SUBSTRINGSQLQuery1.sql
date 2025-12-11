💡 BASIC QUESTIONS (1–10)
1. Find the length of each employee name.
select name, len(name) Employee_name_LEN from employeetable1
2. Find the length of each city name.
select city, len(city) as lentgh_of_employeename from employeetable1;
3. Replace all occurrences of ‘a’ with ‘@’ in employee names.
select name, replace(name,'a','@')as temp_name from employeetable1;
4. Replace all occurrences of ‘e’ with ‘#’ in department names.
select Department, replace(department,'e','#')as temp_Dept_name from employeetable1;
5. Concatenate name and department with a space in between.
select concat(name, ' ', department) as Marged from employeetable1;
6. Concatenate name, department, and city separated by commas.
select concat(name, ',', department,',', City) as Marged from employeetable1;
7. Extract the first 3 characters of each name.
select left(name,3) from employeetable1;
select name, SUBSTRING(name, 1,3) as CHar_3_first from employeetable1
8. Extract the last 3 characters of each name.
select name, SUBSTRING (name, len(name) -2, 3) as Last_3Char from employeetable1
-- -2 will not give the output because, will not found the lenth and where it wil strat.
9. Replace spaces in name with underscores.
select REPLACE(name, ' ','_') as underscores  from employeetable1
10. Find the length of email_id after removing all spaces.
select replace(email,' ',''), 
LEN(email) as total_lenth
from employeetable1;
💡 INTERMEDIATE QUESTIONS (11–20)
11. Count how many times the letter ‘a’ appears in each name.
select name, len(name) - len(REPLACE(name,'a',''))
as total_a from employeetable1;
12. Replace multiple characters (a, e, i) in names with ‘*’ using nested REPLACE.
select name, 
REPLACE(
   REPLACE(
     REPLACE(name, 'a','*'),
  'e','*'),
'i','*') AS Name_Star_Vowels
from employeetable1;
13. Extract middle 3 characters from name (use LEN() + SUBSTRING()).
SELECT 
    name,
    SUBSTRING(
        name,
        (LEN(name) / 2),   -- starting position
        3                  -- extract 3 characters
    ) AS Middle3Chars
FROM employeetable1;

14. Concatenate first 3 letters of name with last 3 letters of name.
select CONCAT (SUBSTRING(name, 1, 3), '+' ,(SUBSTRING(name, LEN(name)-2,3)))  FROM employeetable1
15. Replace department name ‘IT’ with ‘Information Technology’.
select Department, REPLACE(department, 'IT', 'Information Technology') from employeetable1
16. Find names where length > 6 characters.
select * from employeetable1
where LEN(name)>6;
17. Extract substring from email_id before ‘@’.
select SUBSTRING(email,1, CHARINDEX('@', email)-1)as UsernamePart from employeetable1;
18. Replace all vowels in names with ‘*’.
SELECT 
    name, -- full name
    REPLACE(
        REPLACE(
            REPLACE(
                REPLACE(
                    REPLACE(name, 'a', '*'), 
                'e', '*'),
            'i', '*'),
        'o', '*'),
    'u', '*') AS Name_Star_Vowels
FROM employeetable1;
19. Concatenate name and salary in the format Name [Salary].
SELECT 
    CONCAT(name, '  [', salary, ']') AS Name_Salary
FROM employeetable1;
20. Extract substring of city starting from 2nd character to the 4th character.
select city, SUBSTRING(city, 2, 3)
from employeetable1

✅ 2. Is YOUR practice enough?
Your practice covered:
✔ LEN
✔ LEFT, RIGHT
✔ SUBSTRING
✔ CHARINDEX
✔ REPLACE
✔ Nested REPLACE
✔ CONCAT
✔ Extract middle characters
✔ Find positions
✔ Count letters
✔ Remove spaces
✔ String pattern logic