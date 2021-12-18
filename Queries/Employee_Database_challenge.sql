--DELIVERABLE 1
--Create a new table to show retiring employees with titles
SELECT emp.emp_no,
	emp.first_name,
	emp.last_name,
	ti.title,
	ti.from_date,
	ti.to_date
INTO retirement_titles
FROM employees AS emp
INNER JOIN titles AS ti
ON (emp.emp_no = ti.emp_no)
WHERE(emp.birth_date BETWEEN '1952-01-01' AND '1955-12-31')
ORDER BY emp.emp_no;


-- Use Dictinct with Orderby to remove duplicate rows
SELECT DISTINCT ON (emp_no) rt.emp_no,
	rt.first_name,
	rt.last_name,
	rt.title
INTO unique_titles
FROM retirement_titles AS rt
ORDER BY emp_no, to_date DESC;


--Get employee number by most recent job title
SELECT COUNT(title), title
INTO retiring_titles
FROM unique_titles
GROUP BY title
ORDER BY COUNT(title) DESC;


-- DELIVERABLE 2
-- Select Mentorship Eligibility
SELECT DISTINCT ON (emp.emp_no) 
	emp.emp_no,
	emp.first_name,
	emp.last_name,
	emp.birth_date,
	de.from_date,
	de.to_date,
	ti.title
INTO mentorship_eligibility
FROM employees AS emp

INNER JOIN dept_emp AS de
	ON (emp.emp_no = de.emp_no)
	
INNER JOIN titles AS ti
	ON (emp.emp_no = ti.emp_no)
	
WHERE (de.to_date = '9999-01-01') 
	AND (emp.birth_date BETWEEN '1965-01-01' AND '1965-12-31')
ORDER BY emp.emp_no;

