show databases;
create database demodb;
use demodb;  -- in this use of "insert into"
create table tab1(name varchar(50),age int);
create table tab2(name varchar(50),age int);
insert into tab1 values("durgesh",21);
insert into tab2  select * from tab1;
select * from tab1;

