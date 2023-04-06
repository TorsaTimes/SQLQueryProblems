# SELECT DISTINCT e.employee_id
# FROM employees e
# LEFT JOIN salaries s ON e.employee_id = s.employee_id
# WHERE s.employee_id IS NULL
# UNION
# SELECT DISTINCT s.employee_id
# FROM salaries s
# LEFT JOIN employees e ON s.employee_id = e.employee_id
# WHERE e.employee_id IS NULL
# ORDER BY employee_id ASC;

SELECT employee_id FROM (
  SELECT employee_id FROM employees
  UNION ALL
  SELECT employee_id FROM salaries
) AS combined
GROUP BY employee_id
HAVING COUNT(*) = 1
ORDER BY employee_id ASC;
