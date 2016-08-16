SELECT e.LastName, e.FirstName, DATEDIFF(YEAR, c.DateStart, ISNULL(c.DateEnd, GetDate()))  WorkExperience
FROM [Employee] e
LEFT JOIN [Career] c ON e.IdEmployee=c.IdEmployee
