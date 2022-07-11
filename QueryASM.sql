﻿--Students can check their results at the end of semester as following example:
--USE FUNCTION, AGGREGATE, SUB-QUERRY
SELECT ID_Student, name, Semester, ID_SubjectSemester, ID_Group, StartDate, EndDate, AVG, [dbo].[GetStatus] (ID_Student, ID_SubjectSemester) AS [Status] 
FROM
(
	SELECT s.ID_Student, sub.name, ss.Semester,ss.ID_SubjectSemester, g.ID_Group, ss.StartDate, ss.EndDate ,SUM(sa.score * ass.[Weight] / 100) AS [AVG]
	FROM [Subject] sub	JOIN Subject_Semester ss ON sub.ID_Subject = ss.ID_Subject
						JOIN Group_Subject_Semester gss ON gss.ID_SubjectSemester = ss.ID_SubjectSemester
						JOIN [Group] g ON g.ID_Group = gss.ID_Group
						JOIN Assessment ass ON ass.ID_SubjectSemester = ss.ID_SubjectSemester
						JOIN Student_Assessment sa ON sa.ID_Assessment = ass.ID_Assessment
						JOIN Enroll e ON e.ID_Group = g.ID_Group
						JOIN Student s ON s.ID_Student = sa.ID_Student AND s.ID_Student = e.ID_Student
	GROUP BY s.ID_Student, ass.ID_SubjectSemester, sub.name, ss.Semester, g.ID_Group, ss.StartDate, ss.EndDate,ss.ID_SubjectSemester
	HAVING s.ID_Student = 'HE162121'	--comment dòng này sẽ cho ra tất cả học sinh
) tb1
ORDER BY StartDate DESC		


--use ORDER BY để sắp xếp sinh viên theo ngày tháng năm sinh --
SELECT * FROM Student ORDER BY dob DESC


--use INNER JOINS để xem sinh viên HE162121 điểm danh môn JDP bao nhiêu lần trên tổng số slot của môn đó--
SELECT s.ID_Student, s.[name], sub.ID_Subject, se.Slot_Number, att.Check_Attendance, sub.totalSlot 
FROM 
Student s INNER JOIN Attendance att ON s.ID_Student = att.ID_Student 
		  INNER JOIN [Session] se ON se.ID_Session = att.ID_Session
		  INNER JOIN Subject_Semester ss ON ss.ID_SubjectSemester = se.ID_SubjectSemester
		  INNER JOIN [Subject] sub ON sub.ID_Subject = ss.ID_Subject
WHERE s.ID_Student = 'HE162121' AND sub.ID_Subject = 'JPD111'


-- use aggregate funtions để tính điểm trung bình môn của học sinh --
SELECT sa.ID_Student, a.ID_SubjectSemester, SUM(sa.score * a.[Weight] / 100) AS [AVG]
FROM Assessment a INNER JOIN Student_Assessment sa ON a.ID_Assessment = sa.ID_Assessment
GROUP BY sa.ID_Student, a.ID_SubjectSemester
ORDER BY sa.ID_Student


-- use GROUP BY and HAVING để tìm ra những sinh viên có GPA đạt xuất sắc
SELECT ID_Student, AVG([AVG]) as GPA
FROM(
	SELECT sa.ID_Student, a.ID_SubjectSemester, SUM(sa.score * a.[Weight] / 100) AS [AVG]
	FROM Assessment a INNER JOIN Student_Assessment sa ON a.ID_Assessment = sa.ID_Assessment
	GROUP BY sa.ID_Student, a.ID_SubjectSemester
) tb1
GROUP BY ID_Student 
HAVING AVG([AVG]) >= 9 


-- Tìm CÓC VÀNG (người có điểm trung bình môn cao nhất trong kì)
SELECT TOP 1 ID_Student, Semester, AVG([AVG]) AS [AVG in Semester]
FROM( 
	SELECT sa.ID_Student, a.ID_SubjectSemester, ss.Semester, SUM(sa.score * a.[Weight] / 100) AS [AVG]
	FROM Assessment a INNER JOIN Student_Assessment sa ON a.ID_Assessment = sa.ID_Assessment		
						INNER JOIN Subject_Semester ss ON ss.ID_SubjectSemester = a.ID_SubjectSemester
	GROUP BY sa.ID_Student, a.ID_SubjectSemester, ss.Semester
	) tb1
WHERE ID_Student LIKE '__17%' AND Semester = 'SU2022' --nhập khóa và kì học 
GROUP BY ID_Student, Semester
ORDER BY [AVG in Semester] DESC