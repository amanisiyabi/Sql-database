
--select all columns
SELECT *FROM departments;

--select specfic columns
SELECT department_id, location_id
FROM departments;
--adding 300 to salary(Arithmetic Operators)
SELECT last_name, salary, salary + 300
FROM employees;


select last_name, salary + 500 as "bonus" from Employees;
select DISTINCT department_id from employees;

select salary,salary*100 from employees;
select first_name||' '|| last_name || '@' || email from employees;

SELECT department_id, location_id
FROM departments;
--Operator Precedence
SELECT last_name, salary, 12*salary+100
FROM employees;
--select from employees table last name column and salary and adding arithmetic operaters
SELECT last_name, salary, 12*(salary+100)
FROM employees;

SELECT last_name, job_id, salary, commission_pct
FROM employees;
--define null value
SELECT last_name, 12*salary*commission_pct
FROM employees;

--usig colums alias
SELECT last_name AS name, commission_pct comm
FROM employees;

SELECT last_name "Name" , salary*12 "Annual Salary"
FROM employees;
--Links columns to other columns
SELECT last_name||job_id AS "Employees"
FROM employees;

SELECT last_name ||' is a '||job_id AS "Employee Details"
FROM employees;

SELECT department_name || q'[ Department's Manager Id: ]'|| manager_id
AS "Department and Manager" FROM departments;
--display department_id column from mployees table
SELECT department_id FROM employees;

SELECT DISTINCT department_id FROM employees;

DESCRIBE employees
