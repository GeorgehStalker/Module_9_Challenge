-- 8. List the frequency counts, in descending order, of all the employee last names (that is, how many employees share each last name)
SELECT
    e.last_name as "Last Name",  -- Last name
    COUNT(e.last_name) as "Number of last names"  -- Count of last names
FROM employees e
GROUP BY e.last_name
ORDER BY COUNT(e.last_name) DESC;  -- Order by count in descending order