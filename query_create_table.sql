CREATE TABLE Student(
ID nchar(10) PRIMARY KEY not null,
[Name] nvarchar(150) not null,
Email nvarchar(150) not null
)

CREATE TABLE Attenddance(
ID_Student nchar(10) not null,
Session_Number int not null,
PRIMARY KEY(ID_Student, Session_Number)
)

CREATE TABLE [Session](
Session_Number int PRIMARY KEY not null,
[Name] nvarchar(150) not null,
Slot_Number int not null,
Group_Name nchar(10) not null
)
drop table Session

CREATE TABLE Enroll(
Group_ID nchar(10) not null,
ID_Student nchar(10) not null,
PRIMARY KEY(Group_ID, ID_Student)
)

drop table enroll
CREATE TABLE [Group](
ID nchar(10) PRIMARY KEY not null,
[Name] nvarchar(150) not null,
Subject_Code nchar(10) not null
)

CREATE TABLE [Semester](
ID nchar(10) not null,
[Name] nvarchar(20) not null,
primary key(ID)
)

CREATE TABLE Semester_Course(
ID_Semester nchar(10) not null,
Subject_Code nchar(10) not null,
primary key (ID_Semester, Subject_Code)
)

CREATE TABLE Course(
Code nchar(10) PRIMARY KEY not null,
[Name] nvarchar(150) not null
)

CREATE TABLE Mark_Detail(
ID_Student nchar(10) not null,
Subject_Code nchar(10) not null,
Grade_category nvarchar(150) not null,
Grade_item nvarchar(150) not null,
[Weight] int not null,
[Value] float not null,
Comment nvarchar(2000) not null,
StartDate DATETIME not null,
EndDate DATETIME not null,
PRIMARY KEY(ID_Student, Subject_Code)
)

drop table Mark_Detail






