✅ The 5 SUBSTRING Questions

🔰 Q1. Display first 3 characters of the name.
select name, SUBSTRING(name, 1, 3) as First_3char from employeetable1;
select LEFT(name,3) from employeetable1--- not required but we can also do with the help of.
--substring will cut the string value and make a new column with help of exsting column.
-- 1 is the stanring point
-- 3 is the end point or position is the char. 
--ex- paresh, lenth 6-3 = 3
-- 1 to 3 = par, this is the output will appear
🔰 Q2. Display 2nd to 5th character from the name.
select name, substring(name, 2,4) as nd_5th_character from employeetable1;
-- 2-5 = 4char, that menas we required 4 char as output from 2
--  substring(name --dynamic name column added and it will work for all the rows)
--2,4 : we found that total 4 char required us, so we will mentioned substring(name, 2-- start, 4 --total_4char)
🔰 Q3. Display last 3 characters of the name.
select name, RIGHT(name,3) as last_char from employeetable1; -- but we will use substring for the output;
select name, SUBSTRING(name, len(name)-2,3) as last_3_Char from employeetable1;
--len(name) means will count the total number of char
-- -2 once we will add then this will break the condtion on -1, -2 --here it will break, 
--but we accpect output as 3 char, so len(name)-2, 3 --char ex- full name : paresh, -2 sh, then means we start on -3, will ship, -1,-2
-- start with -3 and give the 3 char as output, as output we can expect esh, total 3 chr esh -- total 3, skip,  -2
🔰 Q4. Show first letter of department.
select department, SUBSTRING(department,1,1)as first_char from employeetable1
select department, LEFT(department, 1) as first_char from employeetable1
🔰 Q5. Extract domain from email (“gmail”, “yahoo”, etc.)
-- so we know domain name always after @ of the email address; 
-- so we will use charindex because charindex will dynamicaly check the @ string whre, where it will found
-- then thire itself break the value.
select email, SUBSTRING(email, charindex('@',email)+1, 50) as domain_name from employeetable1;
-- so what do you menas by +1 here, that menas N+1, still the condition match of charindex, when the @ will found by charindex
-- then condition will true. 
-- what is 50, that menas  we dont name ho how much size of Email id, so we can take 50 number of length aprox size, we can also resize it upto 50+