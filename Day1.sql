create database student;
use student;
create table student_Details(
student_id INT PRIMARY KEY,
student_name VARCHAR(50),
student_age INT,
student_city VARCHAR(50),
student_marks INT)
;
select * from  student_Details;


create table student_fees(
student_name varchar(50),
student_id INT,
student_class VARCHAR(20),
student_fees INT
);
