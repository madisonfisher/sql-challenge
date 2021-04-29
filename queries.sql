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

-- search 4: departments of each employee
-- employee number, last name, first name, department name
SELECT e.emp_no, e.last_name, e.first_name, d.dept_name
	FROM employees AS e
	JOIN dept_emp AS de
	ON e.emp_no = de.emp_no
		JOIN departments AS d
		ON de.dept_no = d.dept_no
		ORDER BY e.emp_no;

-- search 5: Hercules B.
-- first name, last name, sex
SELECT first_name, last_name, sex
	FROM employees
	WHERE first_name = 'Hercules' AND last_name LIKE 'B%';

-- search 6: sales department employees
-- employee number, last name, first name, department name
SELECT e.emp_no, e.last_name, e.first_name, d.dept_name
	FROM employees AS e
	JOIN dept_emp AS de
	ON e.emp_no = de.emp_no
		JOIN departments AS d
		ON de.dept_no = d.dept_no
		WHERE d.dept_name = 'Sales';

-- search 7: sales and development department employees
-- employee number, last name, first name, department name
SELECT e.emp_no, e.last_name, e.first_name, d.dept_name
	FROM employees AS e
	JOIN dept_emp AS de
	ON e.emp_no = de.emp_no
		JOIN departments AS d
		ON de.dept_no = d.dept_no
		WHERE d.dept_name = 'Sales' OR d.dept_name = 'Development';

-- search 8: list the frequency count of employee last names
-- descending order
SELECT last_name, COUNT(last_name) AS last_name_count
	FROM employees
	GROUP BY last_name
	ORDER BY last_name_count DESC;