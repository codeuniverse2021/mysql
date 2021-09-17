create database transaction; -- transaction means : set of operations:- 1. Commit. 2. rollback. 3. savepoint.
use transaction;
drop database transaction;
create table bankemployees ( name varchar(50), rollno int primary key, age int);
show databases;
begin;
insert into bankemployees values("durgesh",1,21),("deepu",2,20),("deep",3,30);
savepoint first;
delete from bankemployees where name="deepu";
insert into bankemployees values("Sujata", 5, 39);
savepoint second;
insert into bankemployees values("Anjali", 8, 20);
savepoint third;
insert into bankemployees values("Sunidhi", 6, 25);
savepoint fourth;
rollback  to  first;
rollback  to  second;
rollback  to  third;
rollback  to  fourth;
drop table bankemployees;
select * from bankemployees;
desc bankemployees;
rollback;
release savepoint first;





 
