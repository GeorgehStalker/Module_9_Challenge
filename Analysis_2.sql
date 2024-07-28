-- 2. List the first name, last name, and hire date for employees who were hired in 1986
SELECT
    e.first_name as "First Name",  -- First name
    e.last_name as "Last Name",  -- Last name
    e.hire_date as "Hired Date"  -- Hire date
FROM employees e
WHERE e.hire_date BETWEEN '1986-01-01' AND '1986-12-31';