-- 1. List the employee number, last name, first name, sex, and salary of each employee
SELECT 
    e.emp_no as "Employee Number",  -- Employee number
    e.last_name as "Last Name",  -- Last name
    e.first_name as "First Name",  -- First name
    e.sex as "Sex",  -- Sex
    s.salary as "Salary"  -- Salary
FROM employees e
INNER JOIN salaries s
ON e.emp_no = s.emp_no;