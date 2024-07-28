-- 3. List the manager of each department along with their department number, department name, employee number, last name, and first name
SELECT
    CONCAT(e.first_name, ' ', e.last_name) AS "Manager Name",  -- Manager's full name
    d.dept_name as "Department Name",  -- Department name
    d.dept_no as "Department Number",  -- Department number
    e.first_name as "First Name",  -- First name
    e.last_name as "Last Name"  -- Last name
FROM departments d
INNER JOIN dept_emp de
ON d.dept_no = de.dept_no
INNER JOIN employees e
ON de.emp_no = e.emp_no;