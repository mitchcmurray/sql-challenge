--List the employee number, last name, first name, sex, and salary of each employee
Select e.emp_no, e.last_name, e.first_name, e.sex, s.salary
from "Employees" as e
Inner Join "Salaries" as s 
ON e.emp_no = s.emp_no
Order by e.last_name, e.first_name;

--List the first name, last name, and hire date for the employees who were hired in 1986
Select first_name, last_name, hire_date 
from "Employees"
Where hire_date Between '1986-1-1' and '1986-12-31'
Order by hire_date, last_name, first_name;

--List the manager of each department along with their department number, department name, employee number, last name, and first name.
Select dm.dept_no, d.dept_name, dm.emp_no, e.last_name, e.first_name
from "Dept-manager" as dm
Inner Join "Departments" as d on dm.dept_no = d.dept_no
Inner Join "Employees" as e on dm.emp_no = e.emp_no
Order by dm.dept_no;

--List the department number for each employee along with that employee’s employee number, last name, first name, and department name.
Select d.dept_name, e.emp_no, e.last_name, e.first_name 
from "Employees" as e
Inner Join "Dept-emp" as de on e.emp_no = de.emp_no
inner Join "Departments" as d on d.dept_no = de.dept_no
ORDER BY d.dept_name, e.last_name, e.first_name;

--List first name, last name, and sex of each employee whose first name is Hercules and whose last name begins with the letter B
Select first_name, last_name, sex
from "Employees"
where first_name = 'Hercules' and last_name like 'B%'
Order by last_name;

--List each employee in the Sales department, including their employee number, last name, and first name.
Select d.dept_name, e.emp_no, e.last_name, e.first_name
from"Employees" as e
Inner Join "Dept-emp" as de on e.emp_no = de.emp_no
inner Join "Departments" as d on d.dept_no = de.dept_no
where dept_name = 'Sales'
ORDER BY e.last_name, e.first_name;

--List each employee in the Sales and Development departments, including their employee number, last name, first name, and department name.
Select d.dept_name, e.emp_no, e.last_name, e.first_name
from"Employees" as e
Inner Join "Dept-emp" as de on e.emp_no = de.emp_no
inner Join "Departments" as d on d.dept_no = de.dept_no
where dept_name = 'Sales' or dept_name = 'Development'
ORDER BY d.dept_name, e.last_name, e.first_name;

--List the frequency counts, in descending order, of all the employee last names (that is, how many employees share each last name).
Select last_name, COUNT(*) AS lastname_count
From "Employees"
Group by last_name
Order by lastname_count DESC;