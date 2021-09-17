use minedatabase;
create table fruits(fruitname varchar(20),fruitrate int,fruitcolor varchar(20),fruitweight int);
insert into fruits values("mango",20,"yellow",1),("apple",50,"red",1),("grapes",13,"green",1);
select * from fruits;

DELIMITER &&
create procedure proced()
begin    
select * from fruits;
end && 
DELIMITER ;


call proced();
select * from products;
use mydatabase;

drop procedure shows;
DELIMITER &&
create procedure shows(in var int)
begin    
select count(fruitname) from fruits;
end &&
DELIMITER ;
call shows(10);


DELIMITER &&
create procedure durgesh(in var int)
begin    
select * from fruits where fruitrate=var;
end &&
DELIMITER ;
call durgesh(20);
drop procedure durgesh;

Delimiter //
create procedure anjali(in var int)
begin
select count(fruitname) from fruits where fruitrate=var;
end //
Delimiter ;
drop procedure sujata;
call anjali(20);

DELIMITER &&
create procedure sujata(out var int)
begin    
select max(fruitrate) into var from fruits;
end &&
use mydatabase;
show tables;
select * from products;
DELIMITER ;
call sujata(@M);
select @M;
-- A procedure (often called a stored procedure) is a collection of pre-compiled SQL statements stored inside the database.
--  A procedure always contains a name, parameter lists, and SQL statements.