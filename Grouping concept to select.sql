e.department_id,
    department_name,
    COUNT(employee_id) headcount
FROM
    employees e
        INNER JOIN
    departments d ON d.department_id = e.department_id
GROUP BY e.department_id
ORDER BY headcount DESC;


department_id	department_name	headcount
       5	Shipping	7
       3	Purchasing	6
       8	Sales	        6


SELECT
	department_id,
	COUNT(employee_id) headcount
FROM
	employees
GROUP BY
	department_id;


department_id	headcount
        1	1
        2	2
        3	6
        4	1
        5	7
