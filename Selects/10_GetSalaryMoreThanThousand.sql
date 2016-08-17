SELECT 
 e.LastName, 
 e.FirstName, 
 s.Salary
FROM [Employee] e
INNER JOIN [Salary] s ON e.EmployeeId = s.EmployeeId 
WHERE s.Month=1 
 AND s.Year=2015 
 AND s.Salary>1000