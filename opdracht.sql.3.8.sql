SELECT pres_hob.pres_name, COUNT(pres_hob.pres_name) AS nr_hobbies 
FROM pres_hob 
GROUP BY pres_hob.pres_name
HAVING COUNT(pres_hob.pres_name) = 
	(SELECT COUNT(pres_hob.pres_name) 
	FROM pres_hob 
	WHERE pres_hob.pres_name = '"Roosevelt F D"')
;
