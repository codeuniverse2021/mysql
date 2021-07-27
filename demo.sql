create database Staff;
use staff;
show databases;
create table students(name varchar(20));
desc students;
insert into students values('durgesh');
select * from students; 
alter table students add age int not null;
update students set age=21 where name='durgesh';
update students set age=21 where name='durgesh';
insert into students values('deep',23);
drop table students;
drop database staff;
show databases;
create database staff;
use staff;
create table students(Stu_id int auto_increment primary key,name varchar(30),email varchar(15),password varchar(10));  
drop table students;
desc students;
insert into students values(1,'deep','deep@1234','password');
insert into students values(2,'deepu','deep@1235','password1');
insert into students values(3,'deepi','deep@1236','password2');
insert into students values(4,'deepuli','deep@1237','password3');
select * from students;
alter table students add age int;
update students set age=21 where Stu_id=1;
update students set age=22 where Stu_id=2;
update students set age=23 where Stu_id=3;
update students set age=24 where Stu_id=4;
select distinct First_name from students;
select age from students order by age;
select age from students order by age desc;
select name from students order by name limit 3;
select name from students where name like'%dur%';
select name from students where age=21;
select max(age) from students;
select count(age) from students;
select avg(age) from students;
select sum(age) from students;
select age from students where age between 21 and 24;
alter table students add sername varchar(30) after name;
select min(age) from students;
select* from students;
select concat('name','','sername') students;
select reverse('durgesh') students;
select concat('durgesh',reverse 'durgesh') students;
select char_length('durgesh') students;
update students set sername='rawat' where Stu_id=1;
update students set sername='negi' where Stu_id=2;
update students set sername='bisht' where Stu_id=3;
update students set sername='latwal' where Stu_id=4;
select concat(First_name," ",sername) as fullname from students;
select Stu_id max(age) from students
group by  Stu_id;










