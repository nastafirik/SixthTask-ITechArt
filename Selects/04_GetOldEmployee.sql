SELECT TOP(1) FirstName,DATEDIFF(YEAR, DateBorn, GETDATE()) Old
FROM Employee
ORDER BY DateBorn ASC

