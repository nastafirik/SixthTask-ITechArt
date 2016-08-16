SELECT IdEmployee
FROM Employee
WHERE IdEmployee in(
    SELECT IdEmployee
	FROM Salary
	WHERE Month=5)
