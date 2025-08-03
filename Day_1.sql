create database employee1;
use employee1;
CREATE TABLE Employees(
	EID int,
    EName varchar(50),
    EDepartment varchar(50),
    ESalary int,
    EJoinDate date
);

insert into Employees values
(1, 'Rahul','IT',60000,'2022-01-10'),
(2, 'Anajli','HR',550000,'2021-09-15'),
(3, 'Vikram','Finance',70000,'2020-03-22'),
(4, 'Pooja','IT',75000,'2022-11-05'),
(5, 'Raj','Marketing',50000,'2023-02-17');

-- 1) Select all columns from the Employees table.
		SELECT * from employees;
        
-- 2) Select the names of employees who work in the IT department.
		SELECT EName, EDepartment from employees where EDepartment = 'IT';

-- 3) Find employees with a salary greater than 60,000.
        select * from employees where ESalary > 60000;

-- 4) List employees who joined after January 1, 2022.
        Select * from employees where EJoinDate >'2022-01-10';

-- 5) Get the total number of employees.
		select Count(*)  from employees; 

-- 6) Show names and departments of employees who are not in the HR department.
	SELECT EName, EDepartment FROM employees WHERE EDepartment != 'IT';

-- 7) Retrieve the employee with the highest salary.
	SELECT EName, ESalary from Employees ORDER BY ESalary DESC LIMIT 1;
    SELECT EName, ESalary FROM Employees WHERE ESalary = (SELECT MAX(ESalary) FROM EMployees);	

-- 8) List employees whose names start with 'R'.
	SELECT EName from EMployees where EName LIKE 'R%';

-- 9) Select employees with salary between 55,000 and 70,000.
		SELECT EName, ESalary from Employees where ESalary between 55000 and 70000;

-- 10) Count how many employees are in each department.
		SELECT EDepartment, COUNT(*) AS EmployeesCount from Employees GROUP BY EDepartment;