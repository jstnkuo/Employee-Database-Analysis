-- List the employee number, last name, first name, sex, and salary of each employee
select e.emp_no, e.last_name, e.first_name, e.sex, s.salary 
from employee as e
inner join salaries as s
on e.emp_no = s.emp_no

-- List the first name, last name, and hire date for the employees who were hired in 1986
select first_name, last_name, hire_date
from employee
where hire_date >= '1986-01-01' AND hire_date < '1987-01-01';

-- List the manager of each department along with their department number,
-- department name, employee number, last name, and first name
select dept_no, dept_name, emp_no, last_name, first_name
from dept_manager 
join employee 
	using (emp_no)
join department
	using (dept_no)
	
-- List the department number for each employee along with that employee’s employee number,
-- last name, first name, and department name
select de.dept_no, de.emp_no, e.last_name, e.first_name, d.dept_name
from employee as e
join dept_emp as de
	on e.emp_no = de.emp_no
join department as d
	on de.dept_no = d.dept_no
	
-- List first name, last name, and sex of each employee 
-- whose first name is Hercules and whose last name begins with the letter B.
select first_name, last_name, sex
from employee
where first_name = 'Hercules' AND last_name LIKE 'B&'


-- List each employee in the Sales department, 
-- including their employee number, last name, and first name
select de.emp_no, e.last_name, e.first_name
from employee as e
join dept_emp as de
	on e.emp_no = de.emp_no
join department as d
	on de.dept_no = d.dept_no
where d.dept_name = 'Sales'

-- List each employee in the Sales and Development departments, 
-- including their employee number, last name, first name, and department name
select de.emp_no, e.last_name, e.first_name, d.dept_name
from employee as e
join dept_emp as de
	on e.emp_no = de.emp_no
join department as d
	on de.dept_no = d.dept_no
where de.dept_no = 'd005' OR de.dept_no = 'd007'

-- List the frequency counts, in descending order, of all the employee last names 
-- (that is, how many employees share each last name
select last_name, COUNT(last_name)
from employee
group by last_name
order by 
COUNT(last_name) desc