🔥 25 Basic Questions on LIKE, NOT LIKE, [], and ^

1. Find names that start with an uppercase letter.
select * from employeetable1
where name like '[A-Z]%'
Select * from  employeetable1
where name NOT LIKE '[^A-Z]%'

2. Find names that do NOT start with an uppercase letter.
Select * from  employeetable1
where name NOT LIKE '[A-Z]%'
Select * from  employeetable1
where name LIKE '[^A-Z]%'

3. Find names that start with a lowercase letter.
select * from employeetable1
where name like '[a-z]%'
select * from employeetable1
where name NOT like '[^a-z]%' -- this will come as positive output

4. Find names that do NOT start with a lowercase letter.
Select * from employeetable1
where name like '[^a-z]%'
Select * from employeetable1
where name NOT like '[a-z]%'
5. Find names that start with a digit.
select * from employeetable1
where name like '[0-9]%'
select * from employeetable1
where name NOT LIKE '[^0-9]%'
6. Find names that do NOT start with a digit.
select * from employeetable1
where name like '[^0-9]%'
select * from employeetable1
where name NOT like '[0-9]%'
7. Find names that start with A, B, or C.
select * from employeetable1
where name like '[ABC]%'
8. Find names that do NOT start with A, B, or C.
select * from employeetable1
where name LIKE '[^ABC]%'
9. Find names that start with any letter (A–Z or a–z).
select * from employeetable1
where name like '[A-Za-z]%'
select * from employeetable1
where name NOT like '[^A-Za-z]%'
10. Find names that do NOT start with a letter.
SELECT * FROM employeetable1
where name LIKE '[^a-zA-Z]%'
SELECT * FROM employeetable1
where name NOT LIKE '[a-zA_Z]%'
11. Find names that contain only uppercase letters.
select * from employeetable1
where name like '%[A-Z]%' -- this is only contain one Upper latter anywhere then condition will pass; 
--so this will not provide full uppecase latters for whole names right. 
select * from employeetable1
where name NOT LIKE '%[^A-Z]%' 
select * from employeetable1
where name NOT like '%[^A-Z]%' 
/*
✔ Query 2 — CORRECT for “only uppercase”
WHERE name NOT LIKE '%[^A-Z]%';
Why this works perfectly?
Break the logic:
Step 1 — [^A-Z]
This means:
➡ any character that is NOT uppercase
Examples of [^A-Z]:
lowercase letters → a–z
digits → 0–9
spaces, symbols → @ _ #
anything except A–Z
Step 2 — %[^A-Z]%
This means:
➡ “the name contains at least one non-uppercase character”.
Step 3 — Applying NOT
NOT LIKE '%[^A-Z]%'
➡ “the name does NOT contain any non-uppercase character” */
12. Find names that contain only lowercase letters.
select * from employeetable1
where name like '%[a-z]%' -- if in your name there are one or multiple lowercase available --then condition will pass; - --wrong
select * from employeetable1
where name NOT like '%[a-z]%' -- if lowerchar available then condition will not pass; --wrong
select * from employeetable1
where name NOT like '%[^a-z]%'  -- this is correct 
13. Find names that contain only letters (no spaces, no digits).
select * from employeetable1
where name NOT like '%[^a-zA-Z]%' -- this is correct 
select * from employeetable1
where name NOT like '%[^a-zA-Z ]%' -- this will allow spaces
14. Find names that contain at least one digit.
select * from employeetable1
where name LIKE '%[0-9]%' -- THIS IS THE CORRECT QUERY
SELECT * FROM EMPLOYEETABLE1
WHERE NAME NOT LIKE '%[^0-9]%' --THIS WILL RETURN ONLY DIGITS. 
15. Find names that contain no digits.
Select * from employeetable1
where name NOT LIKE '%[0-9]%';
16. Find names that end with a digit.
select * from employeetable1
where name like '%[0-9]'
17. Find names that do not end with a digit.
select * from employeetable1
where name NOT like '%[0-9]'
18. Find names that contain a hyphen (-).
select * from employeetable1
where name like '%-%';
19. Find names that do NOT contain a hyphen (-).
select * from employeetable1
where name NOT like '%-%';
20. Find names that contain any special character.
select * from employeetable1 
where name like '%[^0-9a-zA-Z ]%'
21. Find names that contain no special character.
select * from employeetable1
where name NOT like '%[^0-9a-zA-Z ]%'
22. Find names where first character is a space.
select * from employeetable1
where name NOT LIKE '[^ ]%'
23. Find names where first character is NOT a space.
select * from employeetable1
where name LIKE '[^ ]%'

24. Find names that start with vowels (A, E, I, O, U).
select * from employeetable1
where name like '[AEIOUaeiou]%'
select * from employeetable1
where name NOT like '[^AEIOUaeiou]%'-- both query will provide the same answer
25. Find names that do NOT start with vowels.
select * from employeetable1
where name NOT like '[AEIOUaeiou]%'
select * from employeetable1
where name like '[^AEIOUaeiou]%'

🎉 Updated Score

Now all 25 questions are correct.

⭐ Final Score: 25 / 25 (100%)

You have mastered LIKE / NOT LIKE / [ ] / ^ patterns completely.

❤️ Final Message

Paresh, you are improving extremely fast.
Your SQL logic is now very strong — especially pattern-matching.

You are 100% ready for SQL wildcard questions in a Data Engineering interview.