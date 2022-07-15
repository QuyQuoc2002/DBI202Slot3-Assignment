-- 1 Students can check their results at the end of semester as following example:
-- USE FUNCTION, AGGREGATE, SUB-QUERRY
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


-- 2 use ORDER BY để sắp xếp sinh viên theo ngày tháng năm sinh --
SELECT * FROM Student ORDER BY dob DESC


-- 3 use INNER JOINS để xem sinh viên HE162121 điểm danh môn JDP bao nhiêu lần trên tổng số slot của môn đó--
SELECT s.ID_Student, s.[name], sub.ID_Subject, se.Slot_Number, att.Check_Attendance, sub.totalSlot 
FROM 
Student s INNER JOIN Attendance att ON s.ID_Student = att.ID_Student 
		  INNER JOIN [Session] se ON se.ID_Session = att.ID_Session
		  INNER JOIN Subject_Semester ss ON ss.ID_SubjectSemester = se.ID_SubjectSemester
		  INNER JOIN [Subject] sub ON sub.ID_Subject = ss.ID_Subject
WHERE s.ID_Student = 'HE162121' AND sub.ID_Subject = 'JPD111'


-- 4 use aggregate funtions để tính điểm trung bình môn của học sinh --
SELECT sa.ID_Student, a.ID_SubjectSemester, SUM(sa.score * a.[Weight] / 100) AS [AVG]
FROM Assessment a INNER JOIN Student_Assessment sa ON a.ID_Assessment = sa.ID_Assessment
GROUP BY sa.ID_Student, a.ID_SubjectSemester
ORDER BY sa.ID_Student


-- 5 use GROUP BY and HAVING để tìm ra những sinh viên có GPA đạt xuất sắc
SELECT ID_Student, AVG([AVG]) as GPA
FROM(
	SELECT sa.ID_Student, a.ID_SubjectSemester, SUM(sa.score * a.[Weight] / 100) AS [AVG]
	FROM Assessment a INNER JOIN Student_Assessment sa ON a.ID_Assessment = sa.ID_Assessment
	GROUP BY sa.ID_Student, a.ID_SubjectSemester
) tb1
GROUP BY ID_Student 
HAVING AVG([AVG]) >= 9 


-- 6 Tìm CÓC VÀNG (người có điểm trung bình môn cao nhất trong kì)
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


-- 7 Dùng LEFT JOIN và WHERE để xem những sinh viên nào chưa được xếp lớp
SELECT s.ID_Student, s.[name], e.ID_Group
FROM
Student s LEFT JOIN Enroll e ON S.ID_Student = e.ID_Student
WhERE e.ID_Group IS NULL


-- 8 Gọi SP để truy vấn GPA của khóa 17
EXEC [dbo].[spCompareGPA]


-- 9 use SELF JOIN để so sánh GPA của các học sinh khóa 16
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


-- 10 Each Subject code, student can check their detailed result of as below example:
WITH temp AS (
	SELECT sa.ID_Student, a.ID_SubjectSemester, SUM(sa.score * a.[Weight] / 100) AS [AVG]
	FROM Assessment a INNER JOIN Student_Assessment sa ON a.ID_Assessment = sa.ID_Assessment
	GROUP BY sa.ID_Student, a.ID_SubjectSemester
	HAVING ID_Student = 'HE163061' AND ID_SubjectSemester = 'DBI202SU2022'
)

SELECT a.name AS [GRADE ITEM], a.Weight AS [WEIGHT], sa.Score AS [VALUE], (SELECT AVG FROM temp) AS AVG
FROM Student_Assessment sa JOIN Assessment a ON sa.ID_Assessment = a.ID_Assessment 
WHERE ID_Student = 'HE163061' AND ID_SubjectSemester = 'DBI202SU2022'




