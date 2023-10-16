SELECT candidate.name, 
((score.math*2 + score.specific*3 + score.project_plan*5)/10) AS 'avg'
FROM score
JOIN candidate ON candidate.id = score.candidate_id
ORDER BY 'avg' ASC;

--acho que é assim
