SELECT employees.emp_no, employees.last_name, employees.first_name, employees.sex, salaries.salary
FROM employees
INNER JOIN salaries 
ON salaries.emp_no = employees.emp_no;

SELECT employees.first_name, employees.last_name, employees.hire_date
FROM employees
WHERE EXTRACT(year FROM "hire_date") = 1986;

SELECT dept_manager.dept_no, departments.dept_name,
dept_manager.emp_no, employees.last_name, employees.first_name
FROM dept_manager
JOIN departments 
ON dept_manager.dept_no = departments.dept_no
JOIN employees
ON dept_manager.emp_no = employees.emp_no;

SELECT employees.emp_no, employees.last_name, employees.first_name, departments.dept_name
FROM departments
JOIN dept_emp
ON departments.dept_no = dept_emp.dept_no
JOIN employees
ON dept_emp.emp_no = employees.emp_no;

SELECT first_name, last_name, sex 
FROM employees
WHERE first_name like 'Hercules'
AND last_name like 'B%';

SELECT dept_emp.emp_no, employees.last_name, employees.first_name,departments.dept_name
FROM departments
JOIN dept_emp
ON departments.dept_no = dept_emp.dept_no
JOIN employees
ON dept_emp.emp_no = employees.emp_no
WHERE departments.dept_name like 'Sales';

SELECT dept_emp.emp_no, employees.last_name, employees.first_name,departments.dept_name
FROM departments
JOIN dept_emp
ON departments.dept_no = dept_emp.dept_no
JOIN employees
ON dept_emp.emp_no = employees.emp_no
WHERE departments.dept_name like 'Sales' 
OR departments.dept_name like 'Development';

SELECT employees.last_name, COUNT(last_name)
FROM employees
GROUP BY last_name
ORDER BY COUNT(last_name) desc 
