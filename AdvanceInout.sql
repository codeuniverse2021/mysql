use niit;

create table JavaStudent(sno int,name nvarchar(250),age bigint,fees decimal(10,2));
create table AspStudent(sno int,name nvarchar(250),age bigint,fees decimal(10,2));
insert into JavaStudent values(1,'Kamal',25,49000.00),(2,'Saurav',26,49000.00),(3,'Sujaata',30,47000.00),(4,'Anjali',21,45000.00);
insert into AspStudent values(1,'Kamal',25,49000.00),(2,'Saurav',26,49000.00),(3,'Sujaata',30,47000.00),(4,'Anjali',21,45000.00);
insert into AspStudent values(5,'dev',20,29000.00),(6,'Saurav2',26,19000.00);
insert into AspStudent values(9,'deep',19,30000.00);
insert into AspStudent values(10,'daaaaaa',31,25000.00);
insert into AspStudent values(9,'Ravindra Sir',45,1000.00);
select * from AspStudent;
select * from JavaStudent;

DELIMITER $$
create procedure  getStuLevel (in StuAge int,out Details varchar(250))
begin 
declare credit decimal(10,2) default 0;
select fees into credit from JavaStudent where age=StuAge;
if credit >30000 then set Details='You are in best category';
end if ;
end $$
DELIMITER ;
call getStuLevel(26,@det );
select @det as StudentCategory;
												 -- with else condition
DELIMITER $$
create procedure getAspLevel (in StuAge int,out StuDetail varchar(250))
begin
declare SubmitFees decimal(20,2) default 0;
select fees into SubmitFees from AspStudent where age=StuAge;
if SubmitFees>30000 then set StuDetail ='You are in best category';
else set StuDetail='You are in Low Category';
end if;
end $$
DELIMITER ;
call getAspLevel(20,@asp);
select @asp as AspStudentCategory;

										-- else if
 DELIMITER $$
create procedure getAspLevel2 (in StuAge int,out StuDetail varchar(250))
begin
declare SubmitFees decimal(20,2) default 0;
select fees into SubmitFees from AspStudent where age=StuAge;
if SubmitFees>40000 then set StuDetail ='You are in best category';
elseif (SubmitFees<=30000 and SubmitFees > 20000 ) then set  StuDetail='You are in average';
else set StuDetail='You are in Low Category';
end if;
end $$
DELIMITER ;
drop procedure getAspLevel2;
call getAspLevel(31,@aspnew);
select @aspnew as AspStudentCategory;  


 DELIMITER $$
create procedure getAspLevel3 (in StuAge int,out StuDetail varchar(250))
begin
declare SubmitFees decimal(20,2) default 0;
select fees into SubmitFees from AspStudent where age=StuAge;
if SubmitFees>40000 then set StuDetail ='You are in best category';
elseif (SubmitFees<=30000 and SubmitFees > 20000 ) then set  StuDetail='You are in average';
else set StuDetail='You are in Low Category';
end if;
end $$
DELIMITER ;

call getAspLevel(31,@aspnew);
select @aspnew as AspStudentCategory; 



                       