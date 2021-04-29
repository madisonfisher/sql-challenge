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