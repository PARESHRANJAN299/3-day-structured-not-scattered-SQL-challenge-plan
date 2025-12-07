select * from employeetable1

EXEC sp_columns 'employeetable1';
EXEC 
EXECUTE 
execute sp_columns_managed'employeetable1';
--execute sp_columns_100'employeetable1';
EXEC sp_columns 'employeetable1';
ALTER TABLE employeetable1
ADD band VARCHAR(10);

INSERT INTO employeetable1 
(emp_id, name, age, city, department, salary, email, joining_date, band)
VALUES
(39, 'arunKumar', 29, 'Bangalore', 'IT', 55000, 'arun.kumar@.com', '2022-03-15',  'B2'),
(40, 'PujaSharma', 26, 'Odisha', 'HR', 48000, 'riya.sharma@example.com', '2023-01-10',  'A1')

(16, 'Suresh Das', 35, 'Bangalore', 'Finance', 72000, 'suresh.das@example.com', '2021-06-25',  'B3'),
(17, 'Meena Patil', 31, 'Chennai', 'Operations', 60000, 'meena.patil@example.com', '2020-09-18',  'B1'),
(18, 'Rahul Verma', 28, 'Hyderabad', 'Sales', 45000, 'rahul.verma@example.com', '2023-02-05',  'A2'),
(19, 'Kavita Sahu', 33, 'Pune', 'IT', 67000, 'kavita.sahu@example.com', '2021-04-11', 'C1'),
(20, 'Manish Jena', 30, 'Kolkata', 'Marketing', 52000, 'manish.jena@example.com', '2022-07-20',  'B2'),
(21, 'Lalita Mohanty', 27, 'Bhubaneswar', 'HR', 47000, 'lalita.mohanty@example.com', '2023-03-16',  'A1'),
(22, 'Dev Patel', 34, 'Ahmedabad', 'Finance', 75000, 'dev.patel@example.com', '2020-12-12', 'C2'),
(23, 'Nisha Gupta', 29, 'Jaipur', 'IT', 59000, 'nisha.gupta@example.com', '2021-10-22',  'B1'),
(24, 'Prakash Rao', 41, 'Delhi', 'Operations', 82000, 'prakash.rao@example.com', '2019-05-14', 'C3'),
(25, 'Sneha Reddy', 25, 'Hyderabad', 'Sales', 42000, 'sneha.reddy@example.com', '2023-05-30',  'A2'),
(26, 'Gaurav Singh', 32, 'Mumbai', 'Marketing', 61000, 'gaurav.singh@example.com', '2021-08-19', 'B2'),
(27, 'Pooja Mishra', 28, 'Pune', 'IT', 64000, 'pooja.mishra@example.com', '2022-02-14',  'B1'),
(28, 'Anil Pradhan', 38, 'Bhubaneswar', 'Finance', 78000, 'anil.pradhan@example.com', '2018-11-07',  'C3'),
(29, 'Ritika Sharma', 26, 'Delhi', 'HR', 46000, 'ritika.sharma@example.com', '2023-04-25',  'A1'),
(30, 'Sanjay Yadav', 37, 'Lucknow', 'Operations', 70000, 'sanjay.yadav@example.com', '2020-06-05',  'C1'),
(31, 'Zoya Khan', 30, 'Chennai', 'Sales', 53000, 'zoya.khan@example.com', '2022-09-10',  'B2'),
(32, 'Vikas Kumar', 33, 'Bangalore', 'IT', 68000, 'vikas.kumar@example.com', '2021-12-01',  'C1'),
(33, 'Reema Joshi', 27, 'Mumbai', 'Marketing', 50000, 'reema.joshi@example.com', '2023-01-28', 'A2');

select * from employeetable1