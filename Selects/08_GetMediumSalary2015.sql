SELECT 
 e.EmployeeId, 
 e.FirstName, 
 e.LastName, 
 AVG(s.Salary) MidleSalary
FROM [Salary] s
INNER JOIN [Employee] e ON s.EmployeeId = e.EmployeeId
WHERE s.Year=2015
GROUP BY
 e.EmployeeId, 
 e.FirstName, 
 e.LastName
