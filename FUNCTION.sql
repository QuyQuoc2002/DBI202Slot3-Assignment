--KIEM TRA NOT PASS OR PASS
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
