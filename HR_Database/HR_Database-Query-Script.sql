use hr_database;

/* Question 1: Write a query in SQL to display the full name (first and last name),
and salary for those employees who earn below 6000. */

select concat(first_name, ' ', last_name) as Full_Name, salary
from employees
where salary < 6000;

/* Question 2: Write a query in SQL to display the first name, last name, department ID,
and department name for each employee. */

select distinct distinct e.first_name, e.last_name, e.department_id, d.department_name
from employees e join  departments d
on e.department_id = d.department_id;

/* Question 3: Write a query in SQL to display the first and last_name, department number
and salary for those employees who earn more than 8000. */

select first_name, last_name, department_id, salary
from employees
where salary > 8000;

/* Question 4: Write a query in SQL to display the first and last name, and
department number for all employees whose last name is “McEwen”. */

select first_name, last_name, department_id
from employees
where last_name = 'McEwen';

/* Question 5: Write a query in SQL to display the full name (first and last),
hire date, salary, and department number for those employees whose first name
does not containing the letter M and make the result set in ascending order by department number. */

select concat(first_name, ' ', last_name) as Full_Name, hire_date, salary, department_id
from employees
where first_name not like '%M%'
order by department_id asc;

/* Question 6: Write a query in SQL to display the full name (first and last),
the phone number and email separated by hyphen, and salary, for those employees
whose salary is within the range of 9000 and 17000. The column headings assign with Full_Name,
Contact_Details and Remuneration respectively. */

select concat(first_name, ' ',last_name) as Full_Name, concat(phone_number, ' - ',email) as Contact_Details, salary as Renumeration
from employees
where salary >= 9000
and
salary <= 17000;

/* Question 7: Write a query in SQL to display the full name (first and last),
job id and date of hire for those employees who was hired during May 24th, 2007 and April 21st, 2008. */

select concat(first_name, ' ', last_name) as Full_Name, job_id, hire_date
from employees
where hire_date >= '2007-05-24'
and
hire_date <= '2008-04-21';

/* Question 8: Write a query in SQL to display the the full name (first and last name),
and department number for those employees who works either in department 60 or 80. */

select concat(first_name, ' ', last_name) as Full_Name, department_id
from employees
where department_id = 60 or 
department_id = 80;

/*Question 9: Write a query in SQL to display the first and last name, departmentID, city,
and state province for each employee.*/

select e.first_name, e.last_name, e.department_id, l.city, l.state_province
from employees e join departments d
on e.department_id = d.department_id
join location l
on l.location_id = d.location_id;

#Question 10: Write a query in SQL to display the first name, last name, salary, and job grade for all employees

select e.first_name, e.last_name, e.salary, g.grade_level
from employees e join job_grades g
on e.salary
between g.lowest_sal and g.highest_sal;