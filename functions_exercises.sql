USE employees;

SELECT *
FROM employees
WHERE (first_name = 'Maya'
    OR first_name = 'Irena'
    OR first_name = 'Vidya')
  AND gender = 'M'
ORDER BY last_name, first_name DESC;

SELECT *
FROM employees
WHERE last_name LIKE 'e%'
ORDER BY emp_no DESC;

SELECT last_name
FROM employees
WHERE last_name LIKE '%q%';

SELECT *
FROM employees
WHERE (last_name LIKE 'e%'
    OR last_name LIKE '%e');



SELECT CONCAT(first_name ,' ',last_name)
FROM employees
WHERE last_name LIKE 'e%e';

SELECT *
FROM employees
WHERE (last_name LIKE '%q%'
    AND last_name NOT LIKE '%qu%');

SELECT *
FROM employees
WHERE Month(birth_date)= 12
AND DAY(birth_date) = 25;

SELECT DATEDIFF(now(), hire_date)
FROM employees
WHERE Month(birth_date)= 12
  AND DAY(birth_date) = 25
AND year(hire_date) BETWEEN 1990 AND 1999
ORDER BY hire_date DESC;
