-- Make sure table doesn't exist --
DROP TABLE employees

-- Create employees table
CREATE TABLE employees (
  emp_no INT PRIMARY KEY,
  birth_date DATE NOT NULL,
  first_name VARCHAR(50) NOT NULL,
  last_name VARCHAR(50) NOT NULL,
  gender VARCHAR(15) NOT NULL,
  hire_date DATE NOT NULL
);

select * from employees

DROP TABLE department

-- Create department table
CREATE TABLE department (
  dept_no VARCHAR(5) PRIMARY KEY,
  dept_name VARCHAR(30) NOT NULL
);


DROP TABLE dept_emp

-- Create dept_emp table
CREATE TABLE dept_emp (
  emp_no INT NOT NULL,
  dept_no VARCHAR(5) NOT NULL,
  from_date	DATE,
  to_date	DATE,
  FOREIGN KEY (emp_no) REFERENCES employees (emp_no),
  FOREIGN KEY (dept_no) REFERENCES department (dept_no)
);

select * from dept_emp

DROP TABLE dept_manager

-- Create dept manager table
CREATE TABLE dept_manager (
	dept_no VARCHAR(5) NOT NULL,
    emp_no INT NOT NULL,
    from_date DATE,
    to_date DATE,
    FOREIGN KEY (dept_no) REFERENCES department (dept_no),
    FOREIGN KEY (emp_no) REFERENCES employees (emp_no)
);

SELECT * FROM dept_manager

DROP TABLE salaries

-- Create salaries table
CREATE TABLE salaries (
    emp_no INT NOT NULL,
	salary MONEY,
    from_date DATE,
	to_date DATE,
	FOREIGN KEY (emp_no) REFERENCES employees(emp_no)
);

SELECT * FROM salaries

DROP TABLE titles

-- Create titles table
CREATE TABLE titles (
	emp_no INT NOT NULL,
    title VARCHAR(50),
	from_date DATE NOT NULL,
	to_date DATE NOT NULL,
	FOREIGN KEY (emp_no) REFERENCES employees(emp_no)
);

SELECT * FROM titles
