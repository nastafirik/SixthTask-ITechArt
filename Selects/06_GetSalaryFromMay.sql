SELECT Salary.EmployeeId
FROM Salary
WHERE Month = 5 
 AND Year = 2015 
 AND Salary <
		(SELECT top(1) s.Salary
		 FROM Salary s
		 WHERE s.EmployeeId = Salary.EmployeeId 
		  AND Month < 5 
		  AND Year = 2015)









