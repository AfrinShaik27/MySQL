create database asicocompany;
use asicocompany;

create table employee(
id int PRIMARY KEY,
name varchar(50),
salary int not null,
department_id int ,
age int not null);

insert into employee (id,name,salary,department_id,age)
values
(1,"Ravi",25000,1,24),
(2,"Anu",30000,2,25),
(3,"Kiran",35000,1,27);

select * from employee;
-- to display employee_names from employee table
select name from employee;

-- to display name salary of an employee from employee table
select name,salary from employee;

-- Display unique department IDs
select distinct department_id from employee;

-- Display employee ages
select age from employee;

-- Display employee IDs and names
select id,name from employee;

-- Display salaries only
select salary from employee;

-- Display first 2 employees
select * from employee
limit 2;

-- Display employee names alphabetically
select name from employee
order by name;

-- where clause
-- Employees with salary > 25000
select * 
from employee
where salary>25000; 

-- Employees with age < 26
select *
from employee
where age<26;

-- Employees in department 1
select *
from employee
where department_id=1;

-- Employee named Ravi
select * 
from employee 
where name="Ravi";

-- Salary not equal to 25000
select *
from employee
where salary!=25000;

-- Employees with salary >= 30000
select *
from employee 
where salary >=30000;

-- Employees age > 24
select *
from employee
where age>24;

-- Employees with salary < 30000
select *
from employee
where salary < 30000;

-- Employees from department 2
select *
from employee
where department_id=2;

-- Employee with ID 1
select *
from employee
where id=1;
-- AND, OR, NOT
-- Salary > 30000 AND age > 25
select *
from employee
where salary > 30000 AND age > 25;

-- Department 1 AND age < 26
select *
from employee
where department_id=1
AND age < 26;

-- --Salary > 30000 OR age < 25
select * 
from employee
where salary > 30000 OR age < 25;

create table departments
(id int primary key,
departments_name varchar(50));

-- NOT department 1
select *
from employee
where department_id !=1;

-- Salary > 30000 AND department 1
select *
from employee
where salary > 30000 AND department_id=1;

-- Salary < 30000 OR age > 27
select *
from employee
where salary < 30000 OR age > 27;

-- NOT salary < 30000
select *
from employee
where NOT (salary < 30000);

-- Department 1 OR department 2
select *
from employee
where department_id=1 
OR department_id=2;

-- Age > 24 AND salary < 30000
select *
from employee
where age > 24 
AND salary < 30000;

-- NOT age = 25
select *
from employee 
where  age != 25; 
-- it also write as
select *
from employee
where NOT age = 25;

-- ORDER BY
-- Sort employees by salary ascending
select*
from employee
order by salary ASC;

-- Sort employees by salary descending
select * 
from employee
order by salary DESC;

-- Sort employees by age
select * 
from employee 
order by age;

-- Sort names alphabetically
select *
from employee
order by name;

-- Sort by department ID descending
select *
from employee
order by department_id DESC;

-- Sort salary highest to lowest
select *
from employee
order by salary DESC;

-- Sort age descending
select *
from employee
order by age DESC;

-- Sort by name descending
select *
from employee
order by name DESC;

-- Sort by department then salary
select *
from employee
order by department_id ,salary ;

-- Sort by salary and age descending
select *
from employee
order by salary DESC ,age DESC;

<<<<<<< HEAD
-- Count employees
select count(*)
from employee;

-- Find average salary
select avg(salary)
from employee;

-- Find maximum salary
select max(salary)
from employee;

-- Find minimum salary
select min(salary)
from employee;

-- Find total salary
select sum(salary)
from employee;

-- Count employees in department 1
select count(*)
from employee
where department_id=1;

-- Average age
select avg(age)
from employee;

-- Highest age
select max(age)
from employee;

-- Lowest age
select min(age)
from employee;

-- Total employees with salary > 30000
select count(*)
from employee
where salary > 30000;

select * from employee;

=======
>>>>>>> 132028279f0ec4e31728f72c07da8b37e0afab73
create table departments(
id int PRIMARY KEY,
department_name VARCHAR(50));

<<<<<<< HEAD
=======
select * from departments;

>>>>>>> 132028279f0ec4e31728f72c07da8b37e0afab73
insert into departments
(id,departments_name)
values
(1,"HR"),
(2,"IT");

<<<<<<< HEAD
select * from departments;

=======
>>>>>>> 132028279f0ec4e31728f72c07da8b37e0afab73
-- Display all departments
select departments_name from departments;
