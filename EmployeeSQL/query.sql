-- SELECT employees.empl, employees.last_name, employees.first_name, employees.sex, salaries.salary
-- FROM salaries
-- INNER JOIN employees ON
-- employees.empl=salaries.emp_no;

-- SELECT first_name, last_name, hire_date from employees
-- WHERE extract(year from hire_date) = 1986;

-- SELECT departments.dept_no, departments.dept_name, employees.empl, employees.first_name, employees.last_name 
-- FROM dept_manager 
-- INNER JOIN employees ON employees.empl=dept_manager.emp_no
-- INNER JOIN departments ON dept_manager.d=departments.dept_no;

-- can employees be in two departments?
SELECT employees.empl, employees.last_name, employees.first_name, departments.dept_name
FROM employees 
INNER JOIN dept_emp ON employees.empl=dept_emp.dept
INNER JOIN departments ON departments.dept_no=dept_emp.dept_no;

SELECT employees.first_name, employees.last_name, employees.sex
FROM employees
WHERE 
	first_name = 'Hercules'
	AND last_name LIKE 'B%'
	
SELECT employees.empl, employees.last_name, employees.first_name, departments.dept_name
FROM employees 
INNER JOIN dept_emp ON employees.empl=dept_emp.dept
INNER JOIN departments ON departments.dept_no=dept_emp.dept_no
WHERE departments.dept_name = 'Sales';

SELECT employees.empl, employees.last_name, employees.first_name, departments.dept_name
FROM employees 
INNER JOIN dept_emp ON employees.empl=dept_emp.dept
INNER JOIN departments ON departments.dept_no=dept_emp.dept_no
WHERE departments.dept_name = 'Sales'
	OR departments.dept_name = 'Development';

SELECT last_name, COUNT(empl) AS "Last Name Count"
FROM employees
GROUP BY last_name
ORDER BY "Last Name Count" DESC;


	

