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
truncate table student;


alter table student
add column age int ;
-- drop column age;

update student set age=19 where stu_id=101;
update student set age=18 where stu_id=102;
update student set age=18 where stu_id=103;
update student set age=18 where stu_id=104;
update student set age=19 where stu_id=105;
update student set age=19 where stu_id=106;


alter table student
modify column age varchar(2); 

alter table student
change column id stu_id int;

alter table student
change name full_name varchar(50);


alter table students
rename to student;


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

insert into student (stu_id,full_name,marks,grade,city)
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

select city,count(name)
from student
where grade="A"
group by city
having max(marks) >= 90
order by city;
 
-- table related queires
-- to update existing rows

set sql_safe_updates = 0;
update student
set grade="O"
where grade="A";

update student
set marks =95
where id=107;

update student 
set grade ="A"
where id=104;
 
 update student 
 set grade = "A"
 where id=107;
 
--  to delete exiting rows
set sql_safe_updates=0;
delete from student
where id=105;
delete from student;
drop table student;

select * from student;

create table department(
id int primary key, 
name varchar(50));

select * from department;

insert into department (id,name)
values
(101,"science"),
(102,"english"),
(103,"hindi");

update department
set id="111"
where id ="102";

update department
set name="Telugu"
where name="Maths";

set sql_safe_updates=0;

create table teacher(
id int primary key,
name varchar(50),
dept_id int,
foreign key (dept_id) references department (id)
on update cascade
on delete cascade
);
insert into teacher (id,name,dept_id)
values
(101,"Adam",101),
(102,"Bob",103),
(103,"Casey",102),
(104,"Donald",102);


select * from teacher;



-- joins in sql  
create table students(
student_id int primary key,
name varchar(50));

insert into students
(student_id,name)
values
(101,"adam"),
(102,"bob"),
(103,"casey");

select * from students;

create table course(
student_id int, 
course varchar(50));

insert into course
(student_id,course)
values
(102,"Math"),
(105,"English"),
(103,"Science"),
(107,"Computer Science");

select * from course;

-- drop table course;

-- inner join

select *
from students
inner join course
on students.student_id=course.student_id;

-- left join on students table and course table

select *
from students
left join course
on students.student_id=course.student_id;

-- right join on students table and course table

select * 
from students as s
right join course as c
on s.student_id=c.student_id;

-- full join on student table and course table

select * 
from students as s
left join course as c
on s.student_id=c.student_id
union
select * 
from students as s
right join course as c
on s.student_id=c.student_id;

-- left exclusive join

select *
from students as s
left join course as c
on s.student_id=c.student_id
where c.student_id is null;

-- right exclusive join
select * 
from students as s
right join course as c
on s.student_id=c.student_id
where s.student_id is null;


-- full exclusive join

select *
from students as s
left join course as c
on s.student_id=c.student_id
where c.student_id is null
union
select *
from students as s
right join course as c
on s.student_id=c.student_id
where s.student_id is null;


-- self join

create table employee
(id int primary key,
name varchar(50),
manager_id int);

insert into 
employee (id,name,manager_id)
values
(101,"adam",103),
(102,"bob",104),
(103,"casey",null),
(104,"donald",103);
drop table employee;

select * from employee;

select *
from employee as a
join employee as b
on a.id=b.manager_id;

select b.name, a.name as manager_name
from employee as a
join employee as b
on a.id=b.manager_id;

-- union

select * from employee
union 
select * from employee;

-- union all
select * from employee
union all
select * from employee;

-- subquery
-- Get names of all students who scored more than class average.Step 
-- 1. Find the avg of class
-- 2. Find the names of students with marks > avg

select * from student;



select full_name,marks
from student
where marks > (select avg(marks)
from student);



-- Find the names of all students with even roll numbers.
-- Step 1. Find the even roll numbers
-- Step 2. Find the names of students with even roll no


select stu_id
from student
where stu_id % 2 = 0;

select stu_id,full_name
from student
where stu_id in (select stu_id
				   from student
				   where stu_id % 2 = 0);


-- Find the max marks from the students of Delhi
-- Step 1. Find the students of Mumbai
-- Step 2. Find their max marks using the sublist in step 1
 
 select * 
 from student
 where city="delhi";
 
 select max(marks)
 from (select * 
 from student 
 where city="delhi") as Delhicity;

