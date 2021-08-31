create table categories(
categoryid varchar(30) primary key,
categoryname varchar(30),
abcd varchar(50));

create table products(
product_id varchar(20) ,
categoryid varchar(30),
product_name varchar(30),
xyz varchar(20),
primary key(product_id),
constraint fk_catid foreign key (categoryid) references 
categories(categoryid) on update cascade on delete set null
);
alter table products add xyz varchar(30); 
insert into categories values('101','phones','anything1'),('102','Shirts','anything1'),('103','jeans','anything1'),('104','laptop','anything1'),('108','others','anything1'),
('109','keypad phones','anything1');

insert into products values
    (201,101,'realme xt','hello'),
    (202,101,'redmi note 9','	hello'),
    (203,102,'hp'	,'hello'),
    (204,102,'dell vestro','	hello'),
    (205,108,'shirt','	hello');
    
    
    select * from categories
    right join products
    using(categoryid);
    
    
    
    
    
    