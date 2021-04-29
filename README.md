# sql-challenge

## data directory
This folder data contains 6 CSV that are used to generate the company database.

## ERD directory
Within the ERD directory there is code used to generate the ERD for the company database and a picture of the built database.
Diagram generated using https://app.quickdatabasediagrams.com/#/

## schema.sql 
This file generates all the necessary tables and data types for the CSVs to be imported.
Import the CSV in the following order (turn on header and use a comma as the delimiter):
1. titles
2. salaries
3. departments
4. employees
5. dept_manager
6. dept_emp

## queries.sql
This file contains 8 searches through the company database:
1. employee number, last name, first name, sex, salary
2. employees that were hired in 1986
3. managers of departments 
4. departments of each employee
5. Hercules B.
6. sales department employees
7. sales and development department employees
8. list the frequency count of employee last names
