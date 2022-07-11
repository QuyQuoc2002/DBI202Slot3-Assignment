CREATE OR ALTER PROC spCompareGPA
AS
SELECT ID_Student, AVG([AVG]) as GPA
FROM(
	SELECT sa.ID_Student, a.ID_SubjectSemester, SUM(sa.score * a.[Weight] / 100) AS [AVG]
	FROM Assessment a INNER JOIN Student_Assessment sa ON a.ID_Assessment = sa.ID_Assessment
	GROUP BY sa.ID_Student, a.ID_SubjectSemester
) tb1
WHERE ID_Student LIKE '__17%'
GROUP BY ID_Student
