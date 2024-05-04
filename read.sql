create database School_Management_Systems;
create table Students(
stu_id INT  PRIMARY KEY,
stu_name VARCHAR (50) NOT NULL,
grade_level varchar(50) NOT NULL,
birth_date DATE NOT NULL,
gender VARCHAR (50) NOT NULL,
address VARCHAR (50),
par_id INT,
school_id INT,
class_id INT,
CONSTRAINT par_id FOREIGN KEY (par_id)
REFERENCES Parente (par_id),
CONSTRAINT school_id FOREIGN KEY (school_id)
REFERENCES Schoole (school_id),
CONSTRAINT class_nunber_id FOREIGN KEY (class_id)
REFERENCES Classes (class_id),
);
select*from Students
create table Teacher(
teacher_id INT  PRIMARY KEY,
teatcher_name VARCHAR (50) NOT NULL,
birth_date DATE NOT NULL,
address VARCHAR (50),
email VARCHAR (50) NOT NULL,
hire_date DATE NOT NULL,
school1_id INT,
CONSTRAINT school1_id FOREIGN KEY (school1_id)
REFERENCES Schoole (school_id),
);
select*from Teacher

create table Subjecte (
sub_id INT PRIMARY KEY,
sub_name VARCHAR (50) NOT NULL,
grade_level INT NOT NULL,
teacher_id INT,
CONSTRAINT teacher_id FOREIGN KEY (teacher_id)
REFERENCES Teacher (teacher_id),
);
select*from Subjecte

create table Schoole (
school_id INT  PRIMARY KEY,
school_name VARCHAR (50) NOT NULL,
addres VARCHAR (50),
);
select *from Schoole

create table Classes (
class_id INT  PRIMARY KEY,
Class_name VARCHAR (50) NOT NULL, 
school_id INT,
CONSTRAINT school_id FOREIGN KEY (school_id)
REFERENCES Schoole (school_id),
);
select*from Classes
CREATE TABLE Attendancee (
    date1 DATE,
    stu1_id INT,
CONSTRAINT stu1_id FOREIGN KEY (stu1_id)
REFERENCES Students (stu_id),
);
select*from Attendancee
create table Parente (
par_id INT  PRIMARY KEY,
par_name VARCHAR (50) NOT NULL,
phone VARCHAR (11) NOT NULL,
);
select*from Parente
