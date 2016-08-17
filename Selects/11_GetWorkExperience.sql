DECLARE 
 @today DATETIME = GETDATE()

SELECT 
 e.LastName, 
 e.FirstName, 
 c.DepartmentId,
 c.JobId,
 DATEDIFF(DAY, c.DateStart, ISNULL(c.DateEnd, @today)) WorkExperience
FROM [Employee] e
 INNER JOIN [Career] c ON e.EmployeeId = c.EmployeeId
