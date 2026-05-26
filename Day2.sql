create database if not exists college;
use college;
create table student(
id INT PRIMARY KEY,
name VARCHAR(50),
marks INT,
grade VARCHAR(1),
city VARCHAR(50)
);

INSERT INTO student
(id,name,marks,grade,city)
VALUES
(101,"Anil", 78,"C","Pune"),
(102,"BHUMIKA", 93,"A","Mumbai"),
(103,"Chetan", 85,"B","Mumbai"),
(104,"Dhurv", 96,"A","Delhi"),
(105,"Emanuel", 12,"F","Delhi"),
(106,"Farhan", 82,"B","Delhi");

-- to view the table
select * from student;

-- to view only id,name of the table
select id,name from student;

-- to view city names not repeated names of the cities
select DISTINCT city from student;

select * 
from student
where marks > 70;

select *
from student 
where city="Mumbai";
-- AND Operator

select *
from student 
where marks > 80 and city="Mumbai";

-- OR Operator

select *
from student
where marks >=80 or city="Mumbai";

insert into student (id,name,marks,grade,city)
values
(107,"Afrin",80,'B',"Nellore"),
(108,"Sajida",90,'A',"Nellore");

-- BETWEEN Operator and it works on the base of inclusive
select * 
from student
where marks between 80 AND 90;

-- IN Operator
select *
from student
where city in ("Mumbai","Nellore","Delhi");

-- --NOT IN Operator 
select *
from student
where city not in ("Mumbai","Delhi");


-- LIMIT

select * 
from student 
where marks > 70
LIMIT 3;

-- to sort marks in ascending order
select *
from student
order by marks ASC;

-- to sort marks in descending order
select *
from student
order by marks DESC;

select *
from student
order by marks DESC	
limit 3;

select * from student;

-- aggregate functions 
-- to calcualte average marks 
select avg(marks)
from student;

-- to find maximum marks 
select max(marks)
from student;

-- to find mimimum marks
select min(marks)
from student;
 
--  to count number of student where marks greater than 90
select count(id)
from student
where marks >= 90;

select marks
from student
where id=101;

-- to calculate sum of marks from student
select sum(marks)
from student;

-- Group by clause
select city,count(name)
from student
group by city;

-- having clause
select city,count(name)
from student 
group by city
having max(marks)>=90;

select * from student;

select city,count(name)
from student
where grade="A"
group by city
having max(marks) >= 90
order by city;
 


