SELECT DISTINCT ON (employees.emp_no) employees.emp_no, employees.first_name, employees.last_name, employees.birth_date,
		dept_employees.from_date, dept_employees.to_date,
		titles.title
--INTO mentorship_eligibility
FROM employees
INNER JOIN dept_employees
ON (employees.emp_no = dept_employees.emp_no)
INNER JOIN titles
ON (employees.emp_no = titles.emp_no)
WHERE (dept_employees.to_date = '9999-01-01') AND (employees.birth_date BETWEEN '1965-01-01' AND '1965-12-31')
ORDER BY employees.emp_no;