create database collage;
use collage;
create table productlist(productid varchar(10) primary key, productname varchar(30),xyz varchar(20));
describe productlist;
insert into productlist(productname) values("fruits"), ("vegetables"), ("transports"), ("places"), ("players");
select * from productlist;
create table productitems( itemsid varchar(40) primary key,pid varchar(40), itemsname varchar(40),abcd varchar(40),foreign key(pid) references productlist(productid));
alter table productitems change productitmes productitems varchar(40);
alter table productitems drop column productid;
alter table productitems add productid varchar(20);
insert into productitems values(1,"apple"),(1,"apple"),(1,"apple"),(1,"apple"),(1,"apple"),(1,"apple"),(2,"tomato"),
(2,"tomato"),(2,"tomato"),(3,"car"),(3,"car"),(3,"car"),(3,"car"),(3,"car"),(4,"uttrakhand"),(4,"uttrakhand"),(4,"uttrakhand"),(4,"uttrakhand"),
(4,"uttrakhand"),(5,"dhoni"),(5,"dhoni"),(5,"dhoni"),(5,"dhoni"),(5,"dhoni");
select * from productitems;
alter table productitems add foreign key ( productlist productid) refrences productitems productid));
desc table productitems;
