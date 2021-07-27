create database transiction; -- transiction means : set of operations:- 1. Commit. 2. rollback. 3. savepoint.
use transiction;
create table bankemployees ( name varchar(50), rollno int primary key, age int);
show databases;
begin;
insert into bankemployees values("durgesh", 1,21),("deepu",2,20);
savepoint first;
delete from bankemployees where name="deepu";
rollback  to  first;
drop table bankemployees;
select * from bankemployees;
desc bankemployees;
release savepoint first;




 
