DECLARE
 @today DATETIME = GETDATE()
  
SELECT 
 TOP(1) FirstName,
 DATEDIFF(YEAR, DateOfBirth, @today) Old
FROM Employee
ORDER BY DateOfBirth ASC
GO

DECLARE
 @today DATETIME = GETDATE()

SELECT TOP (1)
 FirstName,
 DATEDIFF(YEAR, DateOfBirth, @today) Old
FROM Employee
WHERE DateOfBirth = (
	SELECT 
	 Min(DateOfBirth) 
	FROM Employee)
GO
