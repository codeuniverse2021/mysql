create database joines;
use joines;
create table products(product_id varchar(10) primary key ,catid varchar(10), product_name varchar(40),xyz varchar(50), 
foreign key(catid) references categories(categoriesid) );
create table categories(categoriesid varchar(10) primary key,category_name varchar(40),abcd varchar(40));
show tables;
insert into categories values('101',"fruits","desc"), ('102',"vegetables","desc"), ('103',"cars","desc"), ('104',"bikes","desc"),
('105',"phones","desc");
select * from categories;
insert into products values('201','101',"Apple","hello"),('202','101',"Orange","hello"),('203','102',"Tomato","hello"),('204','102',"Potato","hello"),
('205','103',"Scorpio","hello"),('206','103',"Fortuner","hello"),('207','104',"Honda","hello"),('208','104',"Bullet","hello"),('209','105',"Iphone","hello");
select * from products;
select * from products p  inner join categories c on p.catid=c.categoriesid;
select * from products p  left join categories c on p.catid=c.categoriesid;

