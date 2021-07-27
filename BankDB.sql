 -- Bank Database Mangement System
 
create database Bank_DBM; 
use Bank_DBM;
                      -- Customer_Personal_Information
                      
create table Cust_per_info( C_id bigint not null, C_Name varchar(100), C_DOB int, C_contact int, C_MailID varchar(50) , C_Gender varchar(10), C_Martial_Status varchar(20),
Identification_doc_type varchar(50), C_Id_Doc_No bigint, C_Citizenship varchar(50),
constraint Cust_per_info primary key(C_id));
alter table Cust_per_info modify  column C_id  bigint not null auto_increment; 
insert into Cust_per_info(c_Name,C_DOB) values('DIVYANSHU',12/02/2001);
show tables;
drop table Cust_per_info;
desc Cust_per_info;
select* from Cust_per_info;
truncate table Cust_per_info;
delete from Cust_per_info where C_Name='DIVYANSHU';

                       -- Customer_Reference_Information
                       
create table Cust_ref_info( C_id bigint not null, Ref_Acc_Name varchar(50), Ref_Acc_N0 varchar(50), Ref_Acc_Add varchar(50), Realetion varchar(50),
constraint Cust_per_info primary key(C_id),
constraint  Cust_ref_info foreign key(C_id) references Cust_per_info( C_id)); 

select* from Cust_ref_info; 
drop table Cust_ref_info;
											-- Bank_Information

create table bank_info(ifsc_code varchar(50) not null, Bank_Name varchar(50), Branch_Name varchar(50),
constraint bank_info primary key(ifsc_code));	
drop table bank_info;																					
                                              -- Account_Information  
									
create table Acc_info( Accc_No varchar(50), C_id bigint, Acc_Type varchar(50), Registration_Date varchar(50), Activation_Date varchar(50),
ifsc_code varchar(50) not null, interest decimal, Intial_Deposit decimal,
constraint Acc_info primary key(Accc_No),
constraint Acc_info1 foreign key(C_id) references Cust_per_info( C_id),
constraint Acc_info2 foreign key(ifsc_code) references bank_info(ifsc_code));
drop table Acc_info;
	

      
                                                                                        