SELECT 
 j.JobId, 
 j.JobTitle, 
 (
  SELECT 
   COUNT(c.CareerId) 
  FROM [Career] c
  WHERE c.JobId = j.JobId 
   AND c.DateEnd IS NULL
 ) 
 CountOfEmployees
FROM [Job] j