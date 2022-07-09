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