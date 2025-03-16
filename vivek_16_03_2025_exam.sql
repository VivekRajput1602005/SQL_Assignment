CREATE DATABASE CompanyDB;

use CompanyDB;
CREATE TABLE Employees (
    EmployeeID INT AUTO_INCREMENT PRIMARY KEY,
    Name VARCHAR(100),
    Age INT,
    Department VARCHAR(50),
    Salary DECIMAL(10,2),
    JoiningDate DATE
);


INSERT INTO Employees (Name, Age, Department, Salary, JoiningDate) VALUES
('Alice', 28, 'HR', 50000, '2022-01-15'),
('Bob', 35, 'IT', 70000, '2019-06-20'),
('Charlie', 30, 'Finance', 60000, '2021-07-25'),
('David', 40, 'IT', 80000, '2018-03-10'),
('Eve', 26, 'HR', 48000, '2023-05-01'),
('Frank', 38, 'Marketing', 65000, '2020-11-10'),
('Grace', 29, 'Finance', 62000, '2021-12-05'),
('Hannah', 33, 'IT', 75000, '2019-09-30'),
('Ian', 27, 'Marketing', 55000, '2022-08-19'),
('Jack', 42, 'HR', 52000, '2017-02-14');

select * from Employees;

select name,Salary from Employees where Department = "IT";

select name from Employees where JoiningDate> 2020-01-01;

select name,salary from Employees where salary> 60000;

select max(salary) from Employees;

select name,Age,Department,Salary from Employees order by salary desc;

set sql_safe_updates = 0;
delete from Employees where salary<50000;

select * from Employees where name like "a%";
