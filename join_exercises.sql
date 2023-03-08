USE employees;

SELECT departments.dept_name AS 'Department Name', CONCAT(employees.first_name, ' ', employees.last_name) AS 'Department Manager'
FROM departments
JOIN dept_manager ON departments.dept_no = dept_manager.dept_no
JOIN employees ON  dept_manager.emp_no = employees.emp_no
WHERE to_date = '9999-01-01'
ORDER BY dept_name ;

SELECT departments.dept_name AS '''Department Name', CONCAT(employees.first_name, ' ', employees.last_name) AS 'Department Manager'
FROM departments
JOIN dept_manager ON departments.dept_no = dept_manager.dept_no
JOIN employees ON  dept_manager.emp_no = employees.emp_no
WHERE to_date = '9999-01-01'
AND gender = 'F';

SELECT title, COUNT(*) AS 'Total' FROM titles
JOIN dept_emp de on titles.emp_no = de.emp_no
WHERE titles.to_date = '9999-01-01'
AND de.dept_no = 'd009'
GROUP BY title;

SELECT departments.dept_name AS 'Department Name', CONCAT(employees.first_name, ' ', employees.last_name) AS 'Department Manager', salaries.salary AS 'Salary'
FROM departments
JOIN dept_manager ON departments.dept_no = dept_manager.dept_no
JOIN employees ON  dept_manager.emp_no = employees.emp_no
JOIN salaries on employees.emp_no = salaries.emp_no
WHERE salaries.to_date= '9999-01-01' AND dept_manager.to_date = '9999-01-01'
ORDER BY dept_name;






