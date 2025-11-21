/* Day - 1*/
/*
More mixed problems
--✔ Step-by-step solutions- in deepth plan
--✔ Correction analysis - Idea
--✔ Daily SQL practice plan - 20 questions 

⭐ 3. Your biggest problem is NOT SQL — --it’s lack of foundation Basic
I’ll say this clearly but respectfully:
👉 You never built your SQL basics properly,
so advanced patterns confuse you.
That's why even simple questions feel heavy;

CREATE TABLE employeetable1 (
    emp_id INT PRIMARY KEY,
    name VARCHAR(100),
    age INT,
    city VARCHAR(50),
    department VARCHAR(50),
    salary INT,
    email VARCHAR(150)); */
	/*
INSERT INTO employeetable1 (emp_id, name, age, city, department, salary, email) VALUES
(1, 'Rahul Sharma', 28, 'Delhi', 'IT', 45000, 'rahul.sharma@example.com'),
(2, 'Priya Singh', 32, 'Mumbai', 'HR', 52000, 'priya.singh@example.com'),
(3, 'Arjun Verma', 40, 'Bangalore', 'Finance', 75000, 'arjun.verma@example.com'),
(4, 'Neha Kapoor', 24, 'Delhi', 'IT', 38000, 'neha.kapoor@example.com'),
(5, 'Rohan Das', 29, 'Kolkata', 'Sales', 42000, 'rohan.das@example.com'),
(6, 'Meera Nair', 35, 'Chennai', 'HR', 61000, 'meera.nair@example.com'),
(7, 'Karan Gupta', 30, 'Pune', 'Marketing', 53000, 'karan.gupta@example.com'),
(8, 'Ananya Rao', 27, 'Hyderabad', 'IT', 46000, 'ananya.rao@example.com'),
(9, 'Vikram Singh', 45, 'Mumbai', 'Finance', 82000, 'vikram.singh@example.com'),
(10, 'Sneha Mehta', 26, 'Delhi', 'Sales', 40000, 'sneha.mehta@example.com'); */ 

--select * from employeetable1
--------------------------------------------
--Start 
These are the easiest level possible.
1 ⃣ Show all records from the employees table.
select * from employeetable1;
2 ⃣ Show only the name of all employees.
select name from employeetable1;
3 ⃣ Show only the city of all employees.
select city from employeetable1;
4 ⃣ Show emp_id and name of all employees.
select emp_id from employeetable1
5 ⃣ Show employees whose city is ‘Delhi’.
select name, city from employeetable1
where city in ('Delhi');
6 ⃣ Show employees whose department is ‘IT’.
select name, department
from employeetable1
where department in ('IT');
7 ⃣ Show employees with age more than 30.
select * from employeetable1
where age>30;
8 ⃣ Show employees ordered by salary (smallest to biggest).
select * from employeetable1
order by salary ASC;
9 ⃣ Show employees ordered by age (largest to smallest).
select * from employeetable1
order by age DESC;
10 Show name and salary ordered by name (A → Z).
select name, salary from employeetable1 
Order by name ASC;