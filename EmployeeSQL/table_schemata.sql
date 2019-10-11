DROP TABLE department

CREATE TABLE department (
  dept_no INT PRIMARY KEY,
  dept_name VARCHAR(30) NOT NULL
);

select * from department

DROP TABLE dept_emp

CREATE TABLE dept_emp (
  dept_no INT NOT NULL,
  emp_no INT NOT NULL,
  from_date	DATE,
  to_date	DATE
);

DROP TABLE employees

CREATE TABLE employees (
  emp_no INT PRIMARY KEY,
  birth_date DATE,
  first_name VARCHAR(50) NOT NULL,
  last_name VARCHAR(50) NOT NULL,
  gender VARCHAR(15) NOT NULL,
  hire_date DATE NOT NULL
);

select * from employees

DROP TABLE dept_manager

CREATE TABLE dept_manager (
    dept_no INT,
	emp_no INT,
    from_date DATE,
	to_date DATE,
    FOREIGN KEY (dept_no) REFERENCES department(dept_no),
	FOREIGN KEY (emp_no) REFERENCES employees(emp_no)
);

SELECT * FROM dept_manager

DROP TABLE salaries

CREATE TABLE salaries (
    emp_no INT,
	salary MONEY,
    from_date DATE,
	to_date DATE,
	FOREIGN KEY (emp_no) REFERENCES employees(emp_no)
);

SELECT * FROM salaries

DROP TABLE titles

CREATE TABLE titles (
	emp_no INT,
    title VARCHAR(50),
	from_date DATE NOT NULL,
	to_date DATE NOT NULL,
	FOREIGN KEY (emp_no) REFERENCES employees(emp_no)
);

SELECT * FROM titles