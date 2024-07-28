-- 4. List the department number for each employee along with that employee’s employee number, last name, first name, and department name
SELECT
    d.dept_no as "Department Number",  -- Department number
    e.emp_no as "Employee Number",  -- Employee number
    e.last_name as "Last Name",  -- Last name
    e.first_name as "First Name",  -- First name
    d.dept_name as "Department Name"  -- Department name
FROM employees e
INNER JOIN dept_emp de
ON e.emp_no = de.emp_no
INNER JOIN departments d
ON de.dept_no = d.dept_no;
