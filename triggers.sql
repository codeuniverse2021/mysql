create database triggers;
use triggers;
create table tab1(col1 varchar(50), col2 varchar(50));
create table tab2(col1 varchar(50), col2 varchar(50));
insert into tab1 value("aman","tiwari");
insert into tab1 value("durgesh","rawat");
select * from tab1;
create trigger demo  after delete on tab1
for each row
insert into tab2 values(old.col1,old.col2);
delete from tab1 where col1="durgesh";
show triggers;
select * from tab1;
drop trigger demo;
drop table tab1,tab2;
									-- new type triggers
										
create table emps(emp_id int primary key auto_increment,name varchar(50),age int);
create table audit(sno int primary key auto_increment,audit_description varchar(50));	
delimiter //
create trigger emp_auditer after insert on emps for each row 
begin
insert into audit values(null,concat('this is the audit description',date_format(now(),'%d-%m-%y %h:%i:%s %p')));
insert into emps values(1,"durgesh",20);
end	//
delimiter ;		
show triggers;
select * from audit;
drop table audit;
drop trigger emp_auditer;
drop table emps,audit;
												-- second 
delimiter //
create trigger emp_auditer1 after insert on emps for each row 
begin
declare emp_id int
set emp_id=new.id
insert into audit values(null,concat('this is the audit description',date_format(now(),'%d-%m-%y %h:%i:%s %p')));
end	//
delimiter ;		

                                                

 








										