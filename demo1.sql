create database reports;
show databases;
use reports;
create table staff(staff_id int unique auto_increment,Staff_Fname varchar(20),Staff_Lname varchar(30));
describe staff;
insert into staff values(01,'durgesh','rawat');
alter table staff add Staff_salary varchar(30);-- alter working
update staff set Staff_salary =10000 where Staff_Fname='durgesh'; -- update working
alter table staff change staff_id Staff_id varchar(10); -- change working
alter table staff modify Staff_Fname varchar(50);-- modify working
update staff set Staff_No=1234567890 where Staff_Fname='durgesh';
update staff set Staff_No=1231231230 where Staff_Fname='Kavita';
update staff set Staff_No=4561237890 where Staff_Fname='Usha';
alter table staff add Staff_No varchar(30) after Staff_Lname;
insert into staff values(02,'Kavita','rawat',20000),(03,'Usha', 'Negi',25000);
select max(Staff_salary)from staff; -- max working(Aggregate Function)working
select min(Staff_salary) from staff;
select  Staff_fname from staff where Staff_salary between 10000 and 20000;
select Staff_Fname from staff  order by Staff_salary; -- Order by working
insert into staff values(04,'deepika','negi',0123456789,40000);
select Staff_no from staff where Staff_Fname like '%dur%'; -- like working
select Staff_no from staff where Staff_no  limit 3; -- limit working
select concat (Staff_Fname," ",Staff_Lname') as Fullname from staff;
select concat (Staff_Fname," ",Staff_Lname') as Fullname from staff; -- concat not working
select char_length(Staff_Fname)from staff; -- char_length working (string function) working
select reverse(Staff_Lname)from staff;-- reverse (string function) working
select polindrom (Staff_Fname) from staff;-- does not work
select upper(staff_Fname) from staff; -- upper working
alter table staff add jon varchar(50);
alter table staff change jon Staff_Fullname varchar(50);
alter table staff modify Staff_Fullname varchar(50) after Staff_Lname;
select * from staff;
update staff set Staff_Fullname=concat('Staff_Fname','Staff_Lname');  -- Concat not working
      -------- foreign key 
show databases;
create database infotech;
use infotech;
create table categories(categories_id varchar(40) primary key, categories_name varchar(40), categories_type varchar(50));
create table product(product_id varchar(40) primary key, categories_id varchar(40), product_name varchar(50),product_type varchar(50),foreign key(categories_id) references categories(categories_id));
describe product;
describe categories;
insert into categories values(01,'wood','hard');
insert into product values('A',01,'steal','very hard');
