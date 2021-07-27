create database elearn;
use elearn;

create table feedback(
Contact_Id	int primary key auto_increment,
Contact_time	date,
email varchar(50) not null unique,
Problem	text); 

create table userDetails(
username Varchar(50) primary key,
Role Varchar(50) not null,
password Varchar(50) not null,
contact_id int,
constraint fk foreign key(contact_id) references feedback(contact_id)
);
create table StudentDetails(
username Varchar(50),
    Date_of_joining	timestamp default(current_timestamp()),
	student_Email	varchar(50) not null unique,
    Student_Name	varchar(50),
    Student_Qualification	varchar(50),
    Student_DOB	date,
    Student_mobile	varchar(50),
    Student_photo	blob,
    gender varchar(20),
    city varchar(30),
    country varchar(30),
    constraint fk1 foreign key(username) references userDetails(username)
);
create table QuizDetails(
Quiz_id int primary key auto_increment,
Quiz_total_marks Varchar(50),
quiz blob,
Quiz_solution blob,
Quiz_category Varchar(50)
);
create table courseDetails(
course_Id	int primary key auto_increment,
Course_joining_date	timestamp default(current_timestamp()),
Course_type	Varchar(50) not null ,
Course_level	Varchar(50),
quiz_id int,
    constraint fk4 foreign key(quiz_id) references quizDetails(quiz_id));
create table TeacherDetails(
username Varchar(50) ,
Teacher_name	Varchar(50),
Teacher_Email	Varchar(50) not null unique,
Teacher_qualification	Varchar(50),
Date_of_joining	timestamp default(current_timestamp()),
Teacher_DOB	Varchar(50),
Teacher_photo	blob, 
 gender varchar(20),
    city varchar(30),
    country varchar(30),
course_id int,
    constraint fk2 foreign key(username) references userDetails(username),
        constraint fk3 foreign key(course_id) references CourseDetails(course_id)
);

show tables;

insert into feedback(contact_time,email,problem) values('2021/12/4','aman@gmail.com','kuch nahi');
insert into quizDetails(quiz_total_marks,quiz_category) values(200,'java');
insert into courseDetails(course_type,course_level) values('java','advance');
insert into userDetails(username,password,role) values('aman','1234','Admin');
insert into StudentDetails(student_email,student_name) values('amantiwari8861@gmail.com','aman tiwari');
insert into TeacherDetails(teacher_name,teacher_email) values('naman tiwari','naman@gmail.com');

select * from feedback;
select * from quizDetails;
select * from courseDetails;
select * from userDetails;
select * from studentDetails;
select * from TeacherDetails;

select * from TeacherDetails  inner join userDetails  on TeacherDetails.username=userDetails.username;
select * from TeacherDetails left join userDetails  on TeacherDetails.username=userDetails.username;

-- drop database elearn;