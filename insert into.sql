show databases;
create database demodb;
use demodb;  -- in this use of "insert into"
create table st1(name varchar(50),age int);create table st2(name varchar(50),age int);
insert into st1 values("durgesh",21);
insert into st2  select * from st1;
select * from st2;
drop table st1,st2;
