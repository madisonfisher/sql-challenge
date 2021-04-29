-- search 1: employee number, last name, first name, sex, salary
SELECT e.emp_no, last_name, first_name, sex, salary
FROM employees AS e
	JOIN salaries AS s
	ON e.emp_no = s.emp_no;

-- search 2: employees that were hired in 1986
-- first name, last name, hire date
SELECT first_name, last_name, hire_date
	FROM employees
	WHERE hire_date BETWEEN '1986-01-01' AND '1986-12-31';

-- search 3: managers of departments 
-- department number, department name, employee number, last name, first name
SELECT dm.dept_no, d.dept_name, dm.emp_no, e.last_name, e.first_name
	FROM dept_manager AS dm
	JOIN departments AS d
	ON (dm.dept_no = d.dept_no)
		JOIN employees AS e
		ON (dm.emp_no = e.emp_no);



-- search 5: Hercules B.
-- first name, last name, sex
SELECT first_name, last_name, sex
	FROM employees
	WHERE first_name = 'Hercules' AND last_name LIKE 'B%';
