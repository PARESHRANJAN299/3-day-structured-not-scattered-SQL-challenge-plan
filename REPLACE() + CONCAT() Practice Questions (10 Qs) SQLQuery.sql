🔹 REPLACE() + CONCAT() Practice Questions (10 Qs)
Basic Level (1–5)
Q1. Replace all spaces in employee names with underscores.
select name, replace(name,' ','_') from employeetable1;
Q2. Replace all occurrences of ‘a’ with ‘@’ in employee names.
select name, REPLACE(name,'a','@')from employeetable1;
Q3. Replace ‘IT’ with ‘Information Technology’ in the department column.
select department, REPLACE(department,'IT', 'Information Technology')as Department from employeetable1
Q4. Replace all hyphens - in department names with a space.
select  department, REPLACE(department,'-',' ')
from employeetable1;
Q5. Concatenate name and Department name columns into a single column.
select CONCAT(name,' ',Department) from employeetable1
Intermediate Level (6–10)
Q6. Concatenate name and department with a : separator (e.g., Paresh:IT).
select CONCAT(name, ':', department) from employeetable1;
Q7. Concatenate name and email to create a single string Name_Email.
select CONCAT(name, '_', email)as Name_Email from employeetable1;
Q8. Replace all spaces in names with nothing (remove spaces).
select REPLACE(name,' ','')as Remove_spaces from employeetable1;
Q9. Replace all .com in email addresses with .org.
select REPLACE(email,'.com','.org') from employeetable1;
Q10. Concatenate name, department, and salary into a single column with - separator.
select CONCAT(name,'-',department,'-',salary) as separator from employeetable1;


✅ Accuracy Report — REPLACE() + CONCAT() (10 Questions)
Total Questions: 10
Correct: 10 / 10
Wrong: 0

🎉 All 10 queries are 100% correct.
You finally reached a point where your SQL foundation is strong.