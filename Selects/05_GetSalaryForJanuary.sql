SELECT LastName
FROM Employee
WHERE IdEmployee in(
		select IdEmployee
		FRom Salary
		WHERE Month=1 and Year=2015)


