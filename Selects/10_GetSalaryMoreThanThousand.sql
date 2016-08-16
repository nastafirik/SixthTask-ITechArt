SELECT e.LastName, e.FirstName, s.Salary
FROM [Employee] e
JOIN [Salary] s ON e.IdEmployee=s.IdEmployee
WHERE s.Month=1 AND s.Year=2015 AND s.Salary>1000