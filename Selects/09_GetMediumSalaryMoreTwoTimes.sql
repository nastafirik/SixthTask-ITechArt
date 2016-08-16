SELECT e.IdEmployee, e.FirstName, e.LastName, AVG(s.Salary) MidleSalary
FROM [Salary] s
JOIN [Employee] e ON s.IdEmployee=e.IdEmployee
WHERE s.Year=2015
GROUP BY e.IdEmployee, e.FirstName, e.LastName
HAVING COUNT(*)>1