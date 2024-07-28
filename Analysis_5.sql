-- 5. List first name, last name, and sex of each employee whose first name is Hercules and whose last name begins with the letter B
SELECT
    e.first_name as "First Name",  -- First name
    e.last_name as "Last Name",  -- Last name
    e.sex as "Sex"  -- Sex
FROM employees e
WHERE e.first_name = 'Hercules' AND e.last_name LIKE 'B%';