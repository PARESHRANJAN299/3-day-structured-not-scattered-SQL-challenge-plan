🔥 NEXT 20 MEDIUM-LEVEL QUESTIONS (21–40)


🔥 SUBSTRING() works only on:

VARCHAR
CHAR
NVARCHAR
TEXT 
NOT on DATE, INT, FLOAT, etc.

Try to solve them yourself.

21. Find employees whose name ends with ‘a’.
select * from employeetable1
where name like '%a';
22. Show email + its domain (use SUBSTRING).
select SUBSTRING(email, LEN(email)

SELECT SUBSTRING(joining_date, 1, 4)

SELECT SUBSTRING(joining_date, 6, 2)

SELECT SUBSTRING(joining_date, 9, 2)FROM employeetable1;


--select  Substring(name, 1,3) from employeetable1;
--select left(name,3) from employeetable1; -- both query will return same output
--Rtrim ltrim, trim-- will remove space
✅ 1. Extract first N characters
select substring(name, 3,10) from employeetable1
✅ 2. Extract last N characters
select substring(name, LEN(email)-9,12) from employeetable1;
✅ 3. Extract middle part of a string
select substring(
Example:
rahul@gmail.com
 → gmail.com

23. Find employees whose salary is NOT BETWEEN 20,000 and 40,000.
24. Display name and Joining_date in YYYY format only.
25. Find employees whose department contains the word ‘data’.
26. Show names where the second character is ‘a’.
27. Find employees whose city contains exactly 6 letters.
28. Show employees with NULL salary.
29. Show employees whose email does NOT contain ‘@’.
30. Convert salary into text using CAST().
31. Show names without first 2 characters.

Example:
“Rohit” → “hit”

32. Display the last 4 characters of email.
33. Find employees whose name has exactly 2 spaces.
34. Replace first space in name with a hyphen (only first).
35. Show all employees sorted by name length (largest first).
36. Find employees whose joining month is June.
37. Count how many employees belong to each city (GROUP BY).
38. Show total salary by department (GROUP BY).
39. Find employees whose name contains only alphabetic letters (no digits).
40. Show names padded with leading zeros to make length = 10.

Example:
“Ram” → “000000Ram”