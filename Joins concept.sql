SELECT 
    first_name,
    last_name,
    employees.department_id,
    departments.department_id,
    department_name
FROM
    employees
        INNER JOIN
    departments ON departments.department_id = employees.department_id
WHERE
    employees.department_id IN (1 , 2, 3);
    
    first_name	last_name	department_id	department_id	     department_name
      Jennifer	Whalen	         1	           1	              Administration
      Michael	Hartstein	 2                 2	   	      Marketing
      Pat	Fay	         2	           2	              Marketing
    
      
                         # LEFT JOIN

 SELECT
	r.region_name,
	c.country_name,
	l.street_address,
	l.city
FROM
	regions r
LEFT JOIN countries c ON c.region_id = r.region_id
LEFT JOIN locations l ON l.country_id = c.country_id
WHERE
	c.country_id IN ('US', 'UK', 'CN');


        region_name	        country_name	street_address	       city
        Europe	               United Kingdom	8204 Arthur St	       London
