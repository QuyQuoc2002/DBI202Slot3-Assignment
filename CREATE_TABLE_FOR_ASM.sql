--STUDENT--
CREATE TABLE Student(
ID_Student NCHAR(20) PRIMARY KEY,
[name] NVARCHAR(150),
gender BIT,
dob DATE
)

--Subject--
CREATE TABLE [Subject](
ID_Subject NCHAR(20) PRIMARY KEY,
[name] NVARCHAR(150),
totalSlot int
)

--Subject in semester--
CREATE TABLE [Subject_Semester](
ID_SubjectSemester NCHAR(20) PRIMARY KEY,
ID_Subject NCHAR(20),
Semester NCHAR(20),
StartDate DATE,
EndDate DATE,
FOREIGN KEY (ID_Subject) REFERENCES [Subject](ID_Subject),
)

--Assessment--
CREATE TABLE Assessment(
ID_Assessment NCHAR(20) PRIMARY KEY,
ID_SubjectSemester NCHAR(20) FOREIGN KEY REFERENCES [Subject_Semester](ID_SubjectSemester),
[name] NVARCHAR(150),
[Weight] int,
)

--Student_Assessment--
CREATE TABLE Student_Assessment(
ID_Assessment NCHAR(20),
ID_Student NCHAR(20),
[Date] DATE,
Score FLOAT,
PRIMARY KEY (ID_Assessment,ID_Student,[Date]),
FOREIGN KEY (ID_Student) REFERENCES [Student](ID_Student),
FOREIGN KEY (ID_Assessment) REFERENCES [Assessment](ID_Assessment),
)

--Time Slot in day--
CREATE TABLE TimeSlot(
Slot INT PRIMARY KEY,
[Time] TIME,
)

--Group--
CREATE TABLE [Group](
ID_Group NCHAR(20) PRIMARY KEY,
[name] NVARCHAR(150),
)

--Student enroll group--
CREATE TABLE Enroll(
ID_Student NCHAR(20),
ID_Group NCHAR(20),
PRIMARY KEY (ID_Student, ID_Group),
FOREIGN KEY (ID_Student) REFERENCES [Student](ID_Student),
FOREIGN KEY (ID_Group) REFERENCES [Group](ID_Group),
)

--Group learn subject in one semester--
CREATE TABLE Group_Subject_Semester(
ID_Group NCHAR(20),
ID_SubjectSemester NCHAR(20),
PRIMARY KEY(ID_Group, ID_SubjectSemester),
FOREIGN KEY (ID_Group) REFERENCES [Group](ID_Group),
FOREIGN KEY (ID_SubjectSemester) REFERENCES [Subject_Semester](ID_SubjectSemester)
)

--Session with Subject in one semester--
CREATE TABLE [Session](
ID_Session NCHAR(20) PRIMARY KEY,
[name] NVARCHAR(150),
ID_SubjectSemester NCHAR(20),
Slot_Number int,
Slot int,
ID_Group NCHAR(20),
Room NCHAR(20),
FOREIGN KEY (Slot) REFERENCES [TimeSlot](Slot),
FOREIGN KEY (ID_Group) REFERENCES [Group](ID_Group),
FOREIGN KEY (ID_SubjectSemester) REFERENCES [Subject_Semester](ID_SubjectSemester)
)
--DROP TABLE [Session]

--check attendence--
CREATE TABLE Attendance(
ID_Student NCHAR(20),
ID_Session NCHAR(20),
Check_Attendance BIT,
PRIMARY KEY (ID_Student, ID_Session),
FOREIGN KEY (ID_Student) REFERENCES [Student](ID_Student),
FOREIGN KEY (ID_Session) REFERENCES [Session](ID_Session),
)
--DROP TABLE Attendance