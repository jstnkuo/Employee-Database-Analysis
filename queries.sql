-- List the employee number, last name, first name, sex, and salary of each employee
select e.emp_no, e.last_name, e.first_name, e.sex, s.salary 
from employee as e
inner join salaries as s
on e.emp_no = s.emp_no


select *
from employee


-- List the first name, last name, and hire date for the employees who were hired in 1986
select first_name, last_name, hire_date
from employee
where hire_date = 1986;