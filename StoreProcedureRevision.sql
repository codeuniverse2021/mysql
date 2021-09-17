use niit;
create table NiitStudent(sno int,name varchar(50), courses nvarchar(210),fees decimal(10,2));
insert into NiitStudent values (1,'Durgesh','C#',52000.00),(2,'Joy','DS',32000.00),(3,'Vineet','EXCEL',52000.00),(4,'Prem','EXCEL',52000.00);
DESC NiitStudent;
select * from NiitStudent;
					
                    -- Start making Store Procedure
DELIMITER //
create procedure NiitStu( in var int)
begin 
select * from NiitStudent  where fees =var;
end //
DELIMITER ;
call NiitStu(52000.00);

drop procedure  NiitStu;

DELIMITER //
create procedure NiitStu2( out var varchar(250), out var2 varchar(250))
begin 
set var:= 'Hello I am in var1';
set var2:= 'Hello I am in var2';
end //
DELIMITER ;

call NiitStu2(@a,@b);
select @a as name1,@b as name2 ;

									// INOUT
                                    
DELIMITER //
create procedure NiitStu3( INOUT var2 INT)
begin 
select  fees into var2 from NiitStudent where sno =var2;
end //
DELIMITER ;

select * from NiitStudent;

drop procedure NiitStu3;

 SET @M = '3';  
 CALL NiitStu3(@M);  
SELECT @M; 


