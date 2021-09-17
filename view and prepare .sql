-- views are making a new table of combination two other table    like: table 1 + table2 =view-- when we were use join that time joins connect two table in one table -- : 
-- so all work we can do withh the help of view.
show databases;
use mydatabase;
show tables;
create view joinedData as
select * from products 
inner join categories 
on p.catid=c.categoryid;

select * from products;
update joinedData set product_name="iphone" where product_name like 'real%';
drop view joinedData;

-- In SQL, a view is a virtual table based on the 
-- result-set of an SQL statement.
 -- A view contains rows and columns, just like a real table. 
 -- The fields in  a view are fields from one or more real 
 -- tables in the database.
 
 -- it's just comment
 use main;
 select * from products;
 select * from categories;
 prepare abc from
 ' select * from products where cat_id=? or price>?' ;
 set @id=105;
 set @price=2000;
 execute abc using @id,@price;
 deallocate prepare abc;
 select * from products;

																-- prepare
set @num1=100,@num2=200;

select @num1+@num2 addition;
select @num1+@num2 as addition;

select @num2/@num1;

prepare sub from 'select ?-?;';

execute sub using @num2,@num1;
deallocate prepare sub;
show variables;																







