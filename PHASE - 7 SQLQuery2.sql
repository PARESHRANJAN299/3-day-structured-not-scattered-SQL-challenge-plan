🔶 20 Medium-Level LIKE Questions (Pattern + Logic)
select * from employeetable1
1️⃣Find all employees whose names contain exactly 2 occurrences of the letter ‘a’.
select * from employeetable1
where name like '%aa%'
✅ Correct Answer (SQL Server):
We must check count of 'a' = 2 using LEN:
SELECT *
FROM employeetable1
WHERE LEN(name) - LEN(REPLACE(name, 'a', '')) = 2;

2️⃣Fetch all records where the name starts with a vowel (A, E, I, O, U).
select * from employeetable1
where name like '[AEIOU]%'
3️⃣Find name whose name starts with a digit followed by two letters.
(Example pattern: 3AB)**
select * from employeetable1
where name like '[0-9][A-Z][A-Z]%'
4️⃣Find names that have the 3rd character as “n”.
select * from employeetable1
where name like '__n%'
5️⃣Get all customers whose name contains no special characters.
(Only A-Z and a-z allowed.)**
select * from employeetable1
where name like '%[A-Za-z]%'
--need to check
✅ Correct Answer:
SELECT *
FROM employeetable1
WHERE name NOT LIKE '%[^A-Za-z]%';

6️⃣Find all cities that start with letters between K and S but do not contain the
letter “e”.
select * from employeetable1
where city like '[K-S]%' AND
city not like '%e%'
7️⃣Fetch employees whose names end with two digits.
select * from employeetable1
where name like '%[0-9][0-9]'
8️⃣Find usernames that contain at least one of the characters: @, #, $.
select * from employeetable1
where name like '%[@#$]%'

9️⃣List all records where the description starts with “data” and contains “pipeline”
somewhere.
select * from employeetable1
where description like 'data%' AND description like '%pipeline%';
🔟 Find name whose is exactly 8 characters long and ends with a letter.
select * from employeetable1
where len(name) = 8 AND name like '%a'

✅ Correct Answer:
SELECT *
FROM employeetable1
WHERE LEN(name) = 8
  AND name LIKE '%[A-Za-z]';

1️⃣1️⃣Find all names that start with 'A' but do NOT end with vowels.
select * from employeetable1
where name like 'A%' AND name like '%[AEIOUaeiou]'

✅ Correct Answer:
SELECT *
FROM employeetable1
WHERE name LIKE 'A%'
  AND name NOT LIKE '%[AEIOUaeiou]';
1️⃣2️⃣Fetch employees whose names contain a range pattern like any letter from p
to t.
select * from employeetable1
where name like '%[p-t]%'
1️⃣3️⃣Find phone numbers that start with 9 but have an underscore _ actually
stored in the value.
select * from employeetable1
where phone_number like '9%' and phone_number like '\_' ESCAPE '\'

✅ Correct Answer:
SELECT *
FROM employeetable1
WHERE phone_number LIKE '9%'
  AND phone_number LIKE '%\_%' ESCAPE '\';

1️⃣4️⃣Get all name where the 2nd and 3rd characters are digits.
select * from employeetable1
where name like '_[0-9][0-9]%'
1️⃣5️⃣Return all records where the first character is NOT alphabetic.
SELECT * FROM employeetable1
WHERE name LIKE '[^A-Za-z]%'
1️⃣6️⃣Find all emails that end with .com but do not contain numbers.
select * from employeetable1
WHERE email LIKE '%.com' AND email NOT LIKE '%[0-9]%'

1️⃣7️⃣Fetch employees whose name has exactly one special character in the middle.
select * from employeetable1
where  name like '%_[@#$%]_%'
🔥 Correct Answer depends on length.
But most interviewers expect this:
Pattern: one special character between two letter sequences
SELECT *
FROM employeetable1
WHERE name LIKE '%[A-Za-z][@#$%][A-Za-z]%';
1️⃣8️⃣Find usernames with repeating patterns like 'aa' or 'bb'.
select * from employeetable1
where name like '%aa%' OR 
 name like '%bb%'
1️⃣9️⃣Get all items where the code starts with any 3 letters followed by 2 digits.
select * from employeetable1
where name like '[A-Za-z][A-Za-z][A-Za-z][0-9][0-9]'
2️⃣0️⃣Fetch records where the comment field contains a % sign (literal percent).
select * from employeetable1
where name like '%\%%' ESCAPE '\';


❤️ Final Note (Important)
Paresh, you are doing extremely well.
These 20 questions are medium–hard level.
Even many professionals fail these.

Your score (13/20) is excellent for Day 1 of medium-level patterns.
❌ You got 7 questions wrong
Those are:
❌ Q1
❌ Q5
❌ Q10
❌ Q11
❌ Q13
❌ Q17
❌ Q? (None other — total 6?)
But let’s list all wrong properly: