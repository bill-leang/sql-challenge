-- question 1
SELECT e.emp_no, last_name, first_name, sex, salary FROM employees e
JOIN salaries s ON e.emp_no = s.emp_no;

-- 2
SELECT first_name, last_name, hire_date FROM employees 
WHERE hire_date BETWEEN '1/1/1986' AND '31/12/1986';

--3
SELECT  dm.dept_no, dept_name, dm.emp_no, last_name, first_name
FROM dept_manager dm JOIN departments d ON dm.dept_no = d.dept_no
 JOIN employees e ON e.emp_no = dm.emp_no;
 
--4
SELECT de.dept_no, de.emp_no, last_name, first_name, dept_name 
FROM dept_emp de JOIN employees e ON e.emp_no = de.emp_no 
  JOIN departments d ON d.dept_no = de.dept_no;
  
--5
SELECT first_name, last_name, sex FROM employees 
WHERE first_name='Hercules' and last_name LIKE 'B%';

--6
SELECT e.emp_no, last_name, first_name FROM employees e
JOIN dept_emp de ON de.emp_no = e.emp_no 
JOIN departments d ON de.dept_no = d.dept_no
WHERE dept_name = 'Sales';

--7
SELECT e.emp_no, last_name, first_name, dept_name FROM employees e
JOIN dept_emp de ON de.emp_no = e.emp_no 
JOIN departments d ON de.dept_no = d.dept_no
WHERE dept_name IN ('Sales', 'Development');

--8
SELECT last_name, COUNT(*) FROM employees GROUP BY last_name
 ORDER BY last_name;