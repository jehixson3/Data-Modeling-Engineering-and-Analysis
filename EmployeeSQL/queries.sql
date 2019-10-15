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

-- Create query to get employyees by department --

SELECT D.dept_name as "Department Name", 
	DE.emp_no as "Employee Number", E.last_name as "Last Name",
	E.first_name as "First Name"
FROM department as D
LEFT JOIN dept_emp as DE ON
D.dept_no=DE.dept_no
LEFT JOIN employees as E ON
E.emp_no=DE.emp_no
ORDER BY D.dept_name;

/* Create query to find employyees named Hercules and last name 
starts with */
