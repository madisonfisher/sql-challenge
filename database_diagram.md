## Database Diagram - ERD


### Code Inputted in https://app.quickdatabasediagrams.com/#/
departments
--
dept_no VARCHAR(4) PK FK -< dept_emp.dept_no FK -< dept_manager.dept_no
dept_name VARCHAR(40)

dept_emp
--
emp_no INT PK FK -0 dept_manager.emp_no FK - salaries.emp_no
dept_no VARCHAR(4)

dept_manager
--
dept_no VARCHAR(4) FK >-< dept_emp.dept_no
emp_no INT PK

employees
--
emp_no INT PK FK - salaries.emp_no FK -0 dept_manager.emp_no FK - dept_emp.emp_no
#need to rename emp_title_id as title_id
title_id VARCHAR(5)
birth_date VARCHAR(15)
first_name VARCHAR(30)
last_name VARCHAR(30)
sex VARCHAR(1)
hire_date VARCHAR(15)

salaries
--
emp_no PK INT FK -0 dept_manager.emp_no
salary INT

titles
--
title_id PK VARCHAR(5) FK -< employees.title_id
title VARCHAR(30)
