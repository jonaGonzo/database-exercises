USE employees;

SELECT DISTINCT title
FROM titles;

SELECT last_name
FROM employees
WHERE last_name LIKE 'e%e'
GROUP BY  first_name, last_name;

SELECT COUNT(last_name),  last_name
FROM employees
WHERE (last_name LIKE '%q%'
AND last_name NOT LIKE '%qu%')
GROUP BY last_name;

SELECT COUNT(gender), gender
FROM employees
WHERE (first_name = 'Maya'
    OR first_name = 'Irena'
    OR first_name = 'Vidya')
GROUP BY gender;