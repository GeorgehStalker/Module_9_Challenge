-- 6. List each employee in the Sales department, including their employee number, last name, and first name
-- Subquery method
SELECT
    e.emp_no as "Employee Number",  -- Employee number
    e.first_name as "First Name",  -- First name
    e.last_name as "Last Name"  -- Last name
FROM employees e
WHERE e.emp_no IN (
    SELECT 
        emp_no 
    FROM dept_emp 
    INNER JOIN departments
    ON dept_emp.dept_no = departments.dept_no
    WHERE departments.dept_name = 'Sales');

-- WITH clause method
WITH sales_department AS (
    SELECT 
        emp_no 
    FROM dept_emp 
    INNER JOIN departments
    ON dept_emp.dept_no = departments.dept_no
    WHERE departments.dept_name = 'Sales'
)
SELECT
    e.emp_no as "Employee Number",  -- Employee number
    e.first_name as "First Name",  -- First name
    e.last_name as "Last Name"  -- Last name
FROM employees e
WHERE e.emp_no IN (SELECT emp_no FROM sales_department);

-- JOIN method
SELECT
    e.emp_no as "Employee Number",  -- Employee number
    e.first_name as "First Name",  -- First name
    e.last_name as "Last Name"  -- Last name
FROM employees e
INNER JOIN dept_emp de
ON e.emp_no = de.emp_no
INNER JOIN departments d
ON de.dept_no = d.dept_no
WHERE d.dept_name = 'Sales';