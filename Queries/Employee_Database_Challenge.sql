--Creates retirement_titles table with employees eligible for retirement
SELECT e.emp_no, e.first_name, e.last_name, t.title, t.from_date, t.to_date
INTO retirement_titles
FROM employees AS e
INNER JOIN titles AS t
ON (e.emp_no = t.emp_no)
WHERE e.birth_date BETWEEN '1952-01-01'AND '1955-12-31'
ORDER BY e.emp_no;

SELECT * FROM retirement_titles;

--Creates unique_titles table with employees eligible for retirement who are currently hired
--Creates unique_titles table with employees eligible for retirement who are currently hired
SELECT DISTINCT ON(rt.emp_no) rt.emp_no, rt.first_name, rt.last_name, rt.title
INTO unique_titles
FROM retirement_titles AS rt
WHERE rt.to_date = '9999-01-01'
ORDER BY rt.emp_no ASC, rt.to_date DESC;

SELECT * FROM unique_titles;

--Creates retiring_titles table with the count of how many people are retiring per title
SELECT COUNT(ut.title) count_title, ut.title
INTO retiring_titles
FROM unique_titles AS ut
GROUP BY ut.title
ORDER BY count_title DESC;

SELECT * FROM retiring_titles;

--Creates mentorship_eligibility table to check who is eligible for the mentorship program
SELECT DISTINCT ON(e.emp_no) e.emp_no, e.first_name, e.last_name, e.birth_date,
de.from_date, de.to_date, t.title
INTO mentorship_eligibility
FROM employees AS e
INNER JOIN dept_emp AS DE
ON (e.emp_no = de.emp_no)
INNER JOIN titles AS t
ON (e.emp_no = t.emp_no)
WHERE (e.birth_date BETWEEN '1965-01-01' AND '1965-12-31')
AND (t.to_date = '9999-01-01')
ORDER BY e.emp_no ASC;

SELECT * FROM mentorship_eligibility;