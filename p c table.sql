create database main;
use main;
 drop database  main;
 create table categories(cat_id varchar(50) primary key,cat_name varchar(50),abcd varchar(200));
 create table products(p_id varchar(50) primary key,cat_id varchar(50),p_name varchar(50),xyz varchar(50),constraint product1 foreign key(cat_id) references categories(cat_id));
 desc products;
 insert into categories values(101,'phones',"anydesc"),(102,'fashion',"anydesc"),(103,'laptop',"anydesc"),(104,'food',"anydesc"),(105,'gunes',"anydesc");
 insert into products values(201,101,'realme xt','anul'),(202,101,'redmi note 9','anul'),(203,102,'hp','anul'),(204,102,'dell','anul'),
 (205,103,'shirt','anul'),(206,null,'other','anul'),(207,null,'watch','anul');
 alter table products add price int;
 update products set price=10000 where p_id=201;
  update products set price=80000 where p_id=202;
  update products set price=4000 where p_id=203;
  update products set price=500 where p_id=204;
   update products set price=700 where p_id=205;
    update products set price=70000 where p_id=206;
     update products set price=1000 where p_id=207;
 alter table categories drop column price;
 select * from products; 
 select * from categories;
create view multiple as select * from categories c inner join products p on p.cat_id=c.cat_id;
 