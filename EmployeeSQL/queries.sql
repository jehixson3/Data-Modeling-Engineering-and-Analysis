-- Create query to obtain emp number, first/last name, gender, and salary

SELECT E.emp_no, E.first_name, E.last_name, E.gender, S.salary
FROM employees as E
LEFT JOIN salaries as S ON
E.emp_no=S.emp_no
ORDER BY emp_no

-- Create query to find employees hired in 1986

SELECT *
FROM employees
WHERE EXTRACT (year FROM (hire_date)) = 1986;

-- Create mamagers query.--

SELECT D.dept_no as "Department Number", D.dept_name as "Department Name", 
	DM.emp_no as "Managers Employee Number", E.last_name as "Last Name",
	E.first_name as "First Name", 
	E.hire_date as "Start Employment", 
	DM.to_date as "End Employment"
FROM department as D
LEFT JOIN dept_manager as DM ON
D.dept_no=DM.dept_no
LEFT JOIN employees as E ON
E.emp_no=DM.emp_no;

-- Create query to get employees by department --

SELECT D.dept_name as "Department Name", 
	DE.emp_no as "Employee Number", E.last_name as "Last Name",
	E.first_name as "First Name"
FROM department as D
INNER JOIN dept_emp as DE ON
D.dept_no=DE.dept_no
INNER JOIN employees as E ON
E.emp_no=DE.emp_no
ORDER BY D.dept_name;

/* Create query to find employees named Hercules and last name 
starts with B*/

SELECT *
FROM employees
WHERE employees.first_name = 'Hercules'
AND employees.last_name like 'B%';

/* Create a query for employees of Sales department */

SELECT DE.emp_no as "Employee Number", E.last_name as "Last Name",
	E.first_name as "First Name", D.dept_name as "Department Name"
FROM department as D
INNER JOIN dept_emp as DE ON
D.dept_no=DE.dept_no
INNER JOIN employees as E ON
E.emp_no=DE.emp_no
WHERE D.dept_name = 'Sales';

/* Create a query for employees of Sales and Development department */

SELECT DE.emp_no as "Employee Number", E.last_name as "Last Name",
	E.first_name as "First Name", D.dept_name as "Department Name"
FROM department as D
INNER JOIN dept_emp as DE ON
D.dept_no=DE.dept_no
INNER JOIN employees as E ON
E.emp_no=DE.emp_no
WHERE D.dept_name = 'Sales' OR D.dept_name = 'Development'
ORDER BY dept_name;

/* Create a query count of employee last names in descending order*/

SELECT COUNT(last_name) AS "Total Last Name", last_name AS "Last Name"
FROM employees
GROUP BY last_name
ORDER BY COUNT(last_name) DESC;
