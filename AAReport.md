##### QuocpqHE163061 - DBI202SLOT3

<h1 align = "center"> Student Grading Management Sub-System </h1>

<br />

## I. Brief description of the database

This database consists of 11 tables:

1. ***Student*** (11 records):
    - 3 record Student have id `HE16____`
    - 2 record Student have id `HE17____`
    - 1 record Student have id `HE18____`
    - 2 record Student have id `HS16____`
    - 3 record Student have id `HS17____`
2. ***Group*** (4 records): `SE1647`, `SE1747`, `IB1609`, `IB1709`
3. ***Enroll*** (10 records): 
    - ID `HE16____` enroll group `SE1647`
    - ID `HE17____` enroll group `SE1747`
    - ID `HS16____` enroll group `IB1609`
    - ID `HS17____` enroll group `IB1609`
    - ID `HS18____` has not enrolled any group

4. ***Subject*** (9 Records) form idSubject_totalSlot : `DBI202_10`, `JPD111_10`, `IBI101_10`, `FIN202_10`, `PRO193_10`, `MAD101_10`, `ECO121_8`, `ENM401_8`, `SSG103_5`
5. ***SubjectSemester*** (14 records): `9` subject in semester `SU2022`, `5` subject in semester `SP2022`
6. ***TimeSlot*** (6 records): 1 -> 6
7. ***Group_Subject_Semester*** (16 records): 
    - Group `SE1647` takes `3` Subjects in `SP2022`, takes `2` Subject in `SU2022`
    - Group `IB1609` takes `3` Subjects in `SP2022`, takes `2` Subject in `SU2022`
    - Group `SE1747` takes `3` Subjects in `SU2022`,
    - Group `IB1747` takes `3` Subjects in `SU2022`,
8. ***Session*** (132 records depend on total Slot of each subject): 
    - Group `SE1647` takes `5` Subjects (45` Session)
    - Group `IB1609` takes `5` Subjects (41` Session)
    - Group `SE1747` takes `3` Subjects (25` Session)
    - Group `IB1709` takes `3` Subjects (21` Session)
9. ***Assessment*** (78 records) depend on 16 Group_Subject_Semester `ENM401` have updated (`SP2022`: 7 records, `SU2022`: 9 records)
10. ***Attendance*** (340records) form idStudent_checkAtt: 
    - HE162121_45
    - HE163061_45
    - HE163063_55 (reStudy PRO)
    - HE171111(25)
    - HE174423(25),
	- HS161001_41
	- HS163062_41
	- HS173222_21
	- HS173313_21
	- HS174331_21
11. ***Student_Assessment*** (229 records) details:
    - HE162121 takes SSG103(`PASS`), MAD(`PASS`), PRO(`PASS`), DBI(`NOT PASS` 1 score is 0), JPD(`Fail attendance`)
    - HE163061 takes SSG103(`PASS`), MAD(`PASS`), PRO(`PASS`), DBI(`PASS`), JPD(`PASS`)     ***GOLDEN TOAD*** in SU2022
    - HE163063 takes SSG103(`PASS`), MAD(`PASS`), PRO(`NOT PASS` 1 score is 0), DBI(`NOT PASS` AVG < 5), JPD(`PASS`), PRO(`PASS`)
    - HE171111 takes SSG103(`PASS`), MAD(`PASS`), PRO(`NOT PASS` FInal < 4), 
    - HE174423 takes SSG103(`PASS`), MAD(`PASS`), PRO(`PASS`),           ***GOLDEN TOAD*** in SU2022
    - HS161001 takes SSG103(`PASS`), ECO(`PASS`), ENM(`PASS`), IBI(`PASS`), FIN(`PASS`),         ***GOLDEN TOAD*** in SP2022
    - HS163062 takes SSG103(`PASS`), ECO(`PASS`), ENM(`PASS`), IBI(`PASS`), FIN(`PASS`),
    - HS173222 takes SSG103(`PASS`), ECO(`PASS`), ENM(`NOT PASS` AVG < 5),
    - HS173313 takes SSG103(`NOT PASS` AVG < 5), ECO(`PASS`), ENM(`PASS`), 
    - HS174331 takes SSG103(`Fail attendance`), ECO(`PASS`), ENM(`PASS`), 

<br />

## II. An ERD that fully describes the database.

<p align="center" margin  =25px padding = 25px>
  <img src="https://github.com/QuyQuoc2002/DBI202Slot3-Assignment/blob/main/Image/ER.jpg?raw=true">
</p>

<br />

## III. The relational schema derived from the ERD that is at least in 3NF

<p align="center" margin  =25px padding = 25px>
  <img src="https://github.com/QuyQuoc2002/DBI202Slot3-Assignment/blob/main/Image/Diagram.png?raw=true">
</p>

<br />

## IV. The set of database statements used to create the tables.

<br />

```sql
CREATE TABLE Student(
ID_Student NCHAR(20) PRIMARY KEY,
[name] NVARCHAR(150),
gender BIT,
dob DATE
)
```

<br />

```sql
CREATE TABLE [Subject](
ID_Subject NCHAR(20) PRIMARY KEY,
[name] NVARCHAR(150),
totalSlot int
)
```

<br />

```sql
CREATE TABLE [Subject_Semester](
ID_SubjectSemester NCHAR(20) PRIMARY KEY,
ID_Subject NCHAR(20),
Semester NCHAR(20),
StartDate DATE,
EndDate DATE,
FOREIGN KEY (ID_Subject) REFERENCES [Subject](ID_Subject),
)
```

<br />

```sql
CREATE TABLE Assessment(
ID_Assessment NCHAR(20) PRIMARY KEY,
ID_SubjectSemester NCHAR(20) FOREIGN KEY REFERENCES [Subject_Semester](ID_SubjectSemester),
[name] NVARCHAR(150),
[Weight] int,
)
```

<br />

```sql
CREATE TABLE Student_Assessment(
ID_Assessment NCHAR(20),
ID_Student NCHAR(20),
[Date] DATE,
Score FLOAT,
PRIMARY KEY (ID_Assessment,ID_Student,[Date]),
FOREIGN KEY (ID_Student) REFERENCES [Student](ID_Student),
FOREIGN KEY (ID_Assessment) REFERENCES [Assessment](ID_Assessment),
)
```

<br />

```sql
CREATE TABLE TimeSlot(
Slot INT PRIMARY KEY,
[Time] TIME,
)
```

<br />

```sql
CREATE TABLE [Group](
ID_Group NCHAR(20) PRIMARY KEY,
[name] NVARCHAR(150),
)
```

<br />

```sql
CREATE TABLE Enroll(
ID_Student NCHAR(20),
ID_Group NCHAR(20),
PRIMARY KEY (ID_Student, ID_Group),
FOREIGN KEY (ID_Student) REFERENCES [Student](ID_Student),
FOREIGN KEY (ID_Group) REFERENCES [Group](ID_Group),
)
```

<br />

```sql
CREATE TABLE Group_Subject_Semester(
ID_Group NCHAR(20),
ID_SubjectSemester NCHAR(20),
PRIMARY KEY(ID_Group, ID_SubjectSemester),
FOREIGN KEY (ID_Group) REFERENCES [Group](ID_Group),
FOREIGN KEY (ID_SubjectSemester) REFERENCES [Subject_Semester](ID_SubjectSemester)
)
```

<br />

```sql
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
```

<br />

```sql
CREATE TABLE Attendance(
ID_Student NCHAR(20),
ID_Session NCHAR(20),
Check_Attendance BIT,
PRIMARY KEY (ID_Student, ID_Session),
FOREIGN KEY (ID_Student) REFERENCES [Student](ID_Student),
FOREIGN KEY (ID_Session) REFERENCES [Session](ID_Session),
)
```

<br />

## V. 10 queries that demonstrate the usefulness of the database.

<br />

<br />

### 1. USE `FUNCTION`, `AGGREGATE`, `SUB-QUERRY` <br />
> Students can check their results at the end of semester as following Query:

```sql
SELECT ID_Student,ID_Subject, name AS [Subject Name], Semester, ID_Group, StartDate, EndDate, AVG, [dbo].[GetStatus] (ID_Student, ID_SubjectSemester) AS [Status] 
FROM
(
	SELECT s.ID_Student, sub.ID_Subject, sub.name, ss.Semester,ss.ID_SubjectSemester, g.ID_Group, ss.StartDate, ss.EndDate ,SUM(sa.score * ass.[Weight] / 100) AS [AVG]
	FROM [Subject] sub	JOIN Subject_Semester ss ON sub.ID_Subject = ss.ID_Subject
				JOIN Group_Subject_Semester gss ON gss.ID_SubjectSemester = ss.ID_SubjectSemester
				JOIN [Group] g ON g.ID_Group = gss.ID_Group
				JOIN Assessment ass ON ass.ID_SubjectSemester = ss.ID_SubjectSemester
				JOIN Student_Assessment sa ON sa.ID_Assessment = ass.ID_Assessment
				JOIN Enroll e ON e.ID_Group = g.ID_Group
				JOIN Student s ON s.ID_Student = sa.ID_Student AND s.ID_Student = e.ID_Student
	GROUP BY s.ID_Student, sub.ID_Subject, ass.ID_SubjectSemester, sub.name, ss.Semester, g.ID_Group, ss.StartDate, ss.EndDate,ss.ID_SubjectSemester
	HAVING s.ID_Student = 'HE162121'	--comment dòng này sẽ cho ra tất cả học sinh
) tb1
ORDER BY StartDate DESC	
```

Result: 

<img src="https://github.com/QuyQuoc2002/DBI202Slot3-Assignment/blob/main/Image/1.png?raw=true">

> SQL above have a function **`[dbo].[GetStatus] (ID_Student, ID_SubjectSemester)`** use to check PASS or NOT PASS or FAIL ATTENDANCE and this is here: 

```sql
CREATE OR ALTER FUNCTION GetStatus
(
	@ID_Student NCHAR(20),
	@ID_Subject_Semester NCHAR(20) 
)
RETURNS VARCHAR(50)
AS
BEGIN
	--DECLARE
	DECLARE @Status VARCHAR(50);
	DECLARE @totalSlot INT;
	DECLARE @checkAtt INT;
	DECLARE @AVG FLOAT;
	DECLARE @FinalScore FLOAT;
	DECLARE @MinScore FLOAT;
	SET @Status = 'PASS';
	
	--CHECK ATTENDANCE--
	SELECT @totalSlot = s.totalSlot  
	FROM Subject s JOIN Subject_Semester ss ON s.ID_Subject = ss.ID_Subject WHERE ss.ID_SubjectSemester = @ID_Subject_Semester;
	SELECT @checkAtt = SUM(att.Check_Attendance) FROM Attendance att JOIN Student s ON att.ID_Student = s.ID_Student
											JOIN [Session] sess ON sess.ID_Session = att.ID_Session
			WHERE s.ID_Student = @ID_Student AND  sess.ID_SubjectSemester = @ID_Subject_Semester
	IF (CAST(@checkAtt AS FLOAT) / CAST (@totalSlot as FLOAT)) < 0.8
	BEGIN
		SET @Status = 'Fail Attendance';
	END

	--CHECK AVG < 5
	SELECT @AVG = SUM(sa.score * a.[Weight] / 100)
	FROM Assessment a INNER JOIN Student_Assessment sa ON a.ID_Assessment = sa.ID_Assessment
	GROUP BY sa.ID_Student, a.ID_SubjectSemester
	HAVING sa.ID_Student = @ID_Student AND a.ID_SubjectSemester = @ID_Subject_Semester
	IF @AVG <5 
	BEGIN
		SET @Status = 'NOT PASS';
	END

	--CHECK FINAL EXAM < 4
	SELECT @FinalScore = sa.Score FROM
	Student_Assessment sa	JOIN Student s ON sa.ID_Student = s.ID_Student
						JOIN Assessment ass ON sa.ID_Assessment = ass.ID_Assessment
	WHERE ass.name = 'FinalExam' AND sa.ID_Student = @ID_Student AND ass.ID_SubjectSemester = @ID_Subject_Semester
	IF @FinalScore < 4
	BEGIN
		SET @Status = 'NOT PASS';
	END

	--CHECK 1 đầu điểm = 0
	SELECT @MinScore =  MIN(sa.Score) 
	FROM
	Student_Assessment sa	JOIN Student s ON sa.ID_Student = s.ID_Student
						JOIN Assessment ass ON sa.ID_Assessment = ass.ID_Assessment
	WHERE sa.ID_Student = @ID_Student AND ass.ID_SubjectSemester = @ID_Subject_Semester
	IF @MinScore = 0
	BEGIN
		SET @Status = 'NOT PASS';
	END


	RETURN @Status;
END;
```

<br />

<br />

### 2.

> Each Subject code, student can check their detailed result of as below Query:

```sql
WITH temp AS (
	SELECT sa.ID_Student, a.ID_SubjectSemester, SUM(sa.score * a.[Weight] / 100) AS [AVG]
	FROM Assessment a INNER JOIN Student_Assessment sa ON a.ID_Assessment = sa.ID_Assessment
	GROUP BY sa.ID_Student, a.ID_SubjectSemester
	HAVING ID_Student = 'HE163061' AND ID_SubjectSemester = 'DBI202SU2022'
)

SELECT a.name AS [GRADE ITEM], a.Weight AS [WEIGHT], sa.Score AS [VALUE], (SELECT AVG FROM temp) AS AVG
FROM Student_Assessment sa JOIN Assessment a ON sa.ID_Assessment = a.ID_Assessment 
WHERE ID_Student = 'HE163061' AND ID_SubjectSemester = 'DBI202SU2022'
```

Result: 

<img src="https://github.com/QuyQuoc2002/DBI202Slot3-Assignment/blob/main/Image/2.png?raw=true">

<br />

<br />

### 3. USE `ORDER BY`

> Sort studet list by date of birth as below Query

```sql
SELECT * FROM Student ORDER BY dob DESC
```

Result:

<img src="https://github.com/QuyQuoc2002/DBI202Slot3-Assignment/blob/main/Image/3.png?raw=true">

<br />

<br />

### 4. USE `ORDER BY`

> How many times does a student HE162121 take the JDP course out of the total number of slots for that subject?

```sql
SELECT s.ID_Student, s.[name], sub.ID_Subject, se.Slot_Number, att.Check_Attendance, sub.totalSlot 
FROM 
Student s INNER JOIN Attendance att ON s.ID_Student = att.ID_Student 
		  INNER JOIN [Session] se ON se.ID_Session = att.ID_Session
		  INNER JOIN Subject_Semester ss ON ss.ID_SubjectSemester = se.ID_SubjectSemester
		  INNER JOIN [Subject] sub ON sub.ID_Subject = ss.ID_Subject
WHERE s.ID_Student = 'HE162121' AND sub.ID_Subject = 'JPD111'
```

Result:

<img src="https://github.com/QuyQuoc2002/DBI202Slot3-Assignment/blob/main/Image/4.png?raw=true">


<br />

<br />

### 5. USE `AGGREGATE FUNCTIONS`

> Calculate the student's grade point average each subject as below query:

```slq
SELECT sa.ID_Student, a.ID_SubjectSemester, SUM(sa.score * a.[Weight] / 100) AS [AVG]
FROM Assessment a INNER JOIN Student_Assessment sa ON a.ID_Assessment = sa.ID_Assessment
GROUP BY sa.ID_Student, a.ID_SubjectSemester
ORDER BY sa.ID_Student
```

<img src="https://github.com/QuyQuoc2002/DBI202Slot3-Assignment/blob/main/Image/5.png?raw=true">

<br />

<br />

### 6. USE `GROUP BY` and `HAVING` 

> Find students with excellent GPA as below query:

```sql
SELECT ID_Student, AVG([AVG]) as GPA
FROM(
	SELECT sa.ID_Student, a.ID_SubjectSemester, SUM(sa.score * a.[Weight] / 100) AS [AVG]
	FROM Assessment a INNER JOIN Student_Assessment sa ON a.ID_Assessment = sa.ID_Assessment
	GROUP BY sa.ID_Student, a.ID_SubjectSemester
) tb1
GROUP BY ID_Student 
HAVING AVG([AVG]) >= 9 
```

Result:

<img src="https://github.com/QuyQuoc2002/DBI202Slot3-Assignment/blob/main/Image/6.png?raw=true">

<br />

<br />

### 7. USE `SUB_QUERY`, `TOP`, `LIKE`

> Find GOLDEN TOAD (who has the highest grade point average in the semester) as below query:

```sql
SELECT TOP 1 ID_Student, Semester, AVG([AVG]) AS [AVG in Semester]
FROM( 
	SELECT sa.ID_Student, a.ID_SubjectSemester, ss.Semester, SUM(sa.score * a.[Weight] / 100) AS [AVG]
	FROM Assessment a	INNER JOIN Student_Assessment sa ON a.ID_Assessment = sa.ID_Assessment		
						INNER JOIN Subject_Semester ss ON ss.ID_SubjectSemester = a.ID_SubjectSemester
	GROUP BY sa.ID_Student, a.ID_SubjectSemester, ss.Semester
	) tb1
WHERE ID_Student LIKE '__17%' AND Semester = 'SU2022' --nhập khóa và kì học 
GROUP BY ID_Student, Semester
ORDER BY [AVG in Semester] DESC
```

Result:

<img src="https://github.com/QuyQuoc2002/DBI202Slot3-Assignment/blob/main/Image/7.png?raw=true">

<br />

<br />

### 8. USE `LEFT JOIN`, `WHERE`

> Find students who have not been placed in class as beblow query:

```sql
SELECT s.ID_Student, s.[name], e.ID_Group
FROM
Student s LEFT JOIN Enroll e ON S.ID_Student = e.ID_Student
WhERE e.ID_Group IS NULL
```

Result:

<img src="https://github.com/QuyQuoc2002/DBI202Slot3-Assignment/blob/main/Image/8.png?raw=true">

<br />

<br />

### 9. USE `SELF JOIN`, `WITH AS`

> to compare GPA of 16 students as below query

```sql
WITH temp AS 
(
	SELECT ID_Student, AVG([AVG]) as GPA
	FROM
	(
		SELECT sa.ID_Student, a.ID_SubjectSemester, SUM(sa.score * a.[Weight] / 100) AS [AVG]
		FROM Assessment a INNER JOIN Student_Assessment sa ON a.ID_Assessment = sa.ID_Assessment
		GROUP BY sa.ID_Student, a.ID_SubjectSemester
	) tb1
	WHERE ID_Student LIKE '__16%'
	GROUP BY ID_Student
)

SELECT a.ID_Student, a.GPA, '>' as [ ], b.ID_Student, b.GPA 
FROM temp a, temp b
WHERE a.GPA > b.GPA
ORDER BY a.ID_Student
```

Result:

<img src="https://github.com/QuyQuoc2002/DBI202Slot3-Assignment/blob/main/Image/9.png?raw=true">

<br />

<br />

### 10. USE `SELF JOIN`, `WITH AS`

















