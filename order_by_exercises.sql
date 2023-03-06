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

SELECT *
FROM employees
WHERE last_name LIKE 'e%e';

SELECT *
FROM employees
WHERE (last_name LIKE '%q%'
    AND last_name NOT LIKE '%qu%')
