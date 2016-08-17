SELECT 
 e.EmployeeId, 
 e.FirstName, 
 e.LastName, 
 AVG(s.Salary) MidleSalary
FROM [Employee] e
INNER JOIN [Salary] s ON s.EmployeeId = e.EmployeeId
WHERE s.Year = 2015
GROUP BY 
 e.EmployeeId, 
 e.FirstName, 
 e.LastName
HAVING COUNT(e.EmployeeId) > 1