SELECT j.IdJob, j.JobTitle, (
							SELECT COUNT(c.IdCareer) 
							FROM [Career] c
							WHERE c.IdJob = j.IdJob AND c.DateEnd IS NULL) 
CountOfEmployees
FROM [Job] j