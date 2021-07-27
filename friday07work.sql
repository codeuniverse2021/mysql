create database demodb;
use demodb;
create table categories(categoryid varchar(20) primary key,category_name varchar(30),abcd varchar(20));
create table products(product_id varchar(20) ,catid varchar(30),product_name varchar(30),xyz varchar(20),primary key(product_id),
foreign key (catid) references categories(categoryid)
);
drop table products;
drop table categories;
describe categories;
describe products;
insert into categories values(101,'phones','any description'),(102,'laptop','any description'),(103,'fashion','any description'),(104,'foods','any desc');

select * from categories ;
select * from products; 

insert into products values(201,101,'realme xt','hello'),(202,101,'redmi note 9','	hello'),(203,102,'hp'	,'hello'),(204,102,'dell vestro','	hello'),(205,103,'shirt','	hello');
    
select * from products,categories; -- cartesian product,comma join,cross join
    
    
select * from categories c inner join products p on c.categoryid=p.catid;
    
    select product_id,product_name,category_name,abcd from products as p inner join categories as c on c.categoryid=p.catid where product_id=203;