SELECT 
 TOP(1) FirstName,
 DATEDIFF(YEAR, DateOfBirth, GETDATE()) Old
FROM Employee
ORDER BY DateOfBirth ASC
GO

SELECT TOP (1)
 FirstName,
 DATEDIFF(YEAR, DateOfBirth, GETDATE()) Old
FROM Employee
WHERE DateOfBirth = (
	SELECT 
	 Min(DateOfBirth) 
	FROM Employee)
GO
