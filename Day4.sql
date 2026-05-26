create database company;
use company;
create table employee
(
name varchar(50),
department varchar(50),
salary int  not null
);

insert into employee 
(name,department,salary)
values
("Ravi","IT",50000),
("Sita","IT",60000),
("Aurn","HR",40000),
("Kiran","HR",30000),
("John","Sales",70000);

select * from employee;

-- where clause

select * 
from employee
where salary>50000;

select department ,sum(salary)
from employee
group by department;

select department ,sum(salary)
from employee
group by department
having sum(salary)>86777;

create table sales(
id int primary key,
employee varchar(50),
city varchar(50),
sales int not null);

insert into sales(id,employee,city,sales)
values
(1,"Ravi","Guntur",500),
(2,"sita","Hyderabad",700),
(3,"Ravi","Guntur",300),
(4,"Arun","Chennai",1000),
(5,"Sita","Hyderabad",400),
(6,"John","Chennai",200);

select employee,sum(sales)
from sales
group by employee;

-- Find how many sales records each employee has.
select employee ,count(8)
from sales
group by employee;

-- Find total sales for each city.
select city,sum(sales)
from sales
group by city;

-- Find average sales of each employee.
select employee,avg(sales)
from sales
group by employee;

-- Find highest sales amount in each city and sort highest sales in descending order.
select city,max(sales) as maximum_sales
from sales
group by city
order by maximum_sales DESC;

-- Find smallest sale amount of each employee.
select employee,min(sales) as Minimum_Sales
from sales
group by employee;

-- Show employees whose total sales are greater than 700.
select employee,sum(sales) as Total_Sales
from sales
group by employee
having Total_Sales > 700;

-- Cities Having More Than 1 Sale Record
select city,count(*)
from sales
group by city
having count(*) > 1;

-- Find employee-wise total sales, but consider only sales greater than 300.
select employee,sum(sales) as Total_Sales
from sales
where sales>300
group by employee;

-- Show cities where average sales are greater than 500.
select city,avg(sales)
from sales
group by city
having avg(sales)>500;

-- Show employees who made more than one sale.
select employee,count(*)
from sales
group by employee
having count(*) > 1;

select * from sales;
