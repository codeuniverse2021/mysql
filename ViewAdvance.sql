create database minedatabase;
use minedatabase;
show tables;
create table employ(employid int,employname varchar(20),employsalary decimal(8,2),
employage int, empoloyaddress varchar(20));
insert into employ values(101,"kamal",2345.98,20,"ghaziabad"),
(102,"sourav",9876.67,21,"delhi"),
(103,"deepak",7865.87,23,"hapur"),
(104,"durgesh",97654.98,25,"panipat");
create table student1(studentid int,studentname varchar(20),studentfee decimal(8,2),
studentage int, studentaddress varchar(20));
insert into student1 values(110,"aman",2345.98,10,"ghaziabad"),
(120,"ajay",9876.67,11,"delhi"),
(130,"anjali",7865.87,13,"hapur"),
(140,"sujata",97654.98,15,"panipat");
select * from student1;
select * from employ;

create view myview as 	
select employname,employsalary from employ ;
select * from myview;
select * from myview where employsalary>4000;

create view kamal as 
select employname,employsalary from employ where employsalary>5000;
select * from kamal;
drop view myview;

create or replace view kamal
as select employname,employage from employ;
select * from kamal;
drop view kamal;

alter table employ rename to teacher;
rename table employ to teacher;
show tables;
select * from teacher;
alter table student1 add column submitfee int;
select * from  student1;

select employname from teacher
where avg(student1.submitfee)>2000;

select employname from teacher 
and studentname from student1 
where submitfee>2000;