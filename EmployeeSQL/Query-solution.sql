--List the employee number, last name, first name, sex, and salary of each employee.
Select Employees.emp_no,Employees.last_name,Employees.first_name,employees.sex,Salaries.salary 
From Employees 
Join Salaries On Employees.emp_no = Salaries.emp_no;

--List the first name, last name, and hire date for the employees who were hired in 1986.
Select first_name,last_name,hire_date 
From Employees
Where hire_date between '1986-01-01' AND '1986-12-31';

--List the manager of each department along with their department number, department name, employee number, last name, and first name.
SELECT dm.dept_no, d.dept_name, dm.emp_no, e.last_name, e.first_name
FROM Dept_Manager dm
JOIN Departments d ON dm.dept_no = d.dept_no
JOIN Employees e ON dm.emp_no = e.emp_no;

--List the department number for each employee along with that employee’s employee number, last name, first name, and department name.
Select de.dept_no,de.emp_no,e.last_name,e.first_name,d.dept_name
From dept_emp de
Join Departments d On de.dept_no = d.dept_no
Join Employees e On de.emp_no = e.emp_no;

--List first name, last name, and sex of each employee whose first name is Hercules and whose last name begins with the letter B.
Select first_name,last_name,sex 
From Employees
Where first_name = 'Hercules' And last_name like 'B%';

--List each employee in the Sales department, including their employee number, last name, and first name.
Select emp_no,last_name,first_name
From Employees
Where emp_no IN
(Select emp_no 
From dept_emp
Where dept_no IN 
 (Select dept_no
From Departments
where dept_name = 'Sales'));

--List each employee in the Sales and Development departments, including their employee number, last name, first name, and department name.
Select e.emp_no,e.last_name,e.first_name,d.dept_name
From Employees e
Join dept_emp de On de.emp_no = e.emp_no
join Departments d On d.dept_no = de.dept_no
Where d.dept_name = 'Sales'
    OR d.dept_name = 'Development';
--List the frequency counts, in descending order, of all the employee last names (that is, how many employees share each last name).
Select last_name, Count(last_name) As "Frequency counts"
From Employees
Group by last_name
Order by "Frequency counts" Desc;