 LEN()
 REPLACE()

🔹 LEN() + REPLACE() Practice Questions (10 Qs)
Basic Level (1–5)
select * from employeetable1;
Q1. Find the length of all employee names.
select name, LEN(name) as Employee_NameLength from employeetable1;
Q2. Find the length of email addresses.
select email, LEN(email) as Length_email
from employeetable1;
Q3. Count how many characters are in the department column.
select sum(len(department)) as department_char from employeetable1;
Q4. Count the number of spaces in each employee name.
select name, LEN(name) - LEN(replace(name, ' ',''))as space_count from employeetable1;
Q5. Find employees whose name length is greater than 8 characters.
select * from employeetable1
where LEN(name)>8;

✅ All 5 queries are correct
You are writing SQL cleanly now — string functions are perfect.

Intermediate Level (6–10)
Q6. Replace all spaces in names with underscores.
select REPLACE(name,' ', '_') as underscores from employeetable1;
Q7. Replace all occurrences of ‘a’ with ‘@’ in employee names.
select name, replace(name,'a','@') as Replace_occurrences
from employeetable1;
Q8. Find names that have more than 2 spaces.
select * from employeetable1
where LEN(name)- LEN(replace(name,' ',''))>2 
Q9. Replace all hyphens - in department names with a space.
select REPLACE(department,'-',' ') from employeetable1
Q10. Count how many times the letter ‘e’ appears in each employee name.
select name, len(name)- len(REPLACE(name,'e','')) as e_count from employeetable1;

✅ FINAL RESULT
Question Set	Status
Q1–Q5 Basic	⭐ ALL CORRECT
Q6–Q10 Intermediate	⭐ ALL CORRECT