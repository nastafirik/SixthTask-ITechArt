DECLARE
  @month INT = 1,
  @year INT = 2015

SELECT
  AVG(Salary) AS MediumSalary
FROM Salary
WHERE Month = @month 
  AND Year = @year