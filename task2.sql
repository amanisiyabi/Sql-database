--Using the WHERE Clause
SELECT employee_id, last_name, job_id, department_id
FROM employees
WHERE department_id = 90 ;

SELECT last_name, job_id, department_id
FROM employees
WHERE last_name = 'Whalen' ;

SELECT last_name
FROM employees
WHERE hire_date = '17-FEB-96' ;
--Using Comparison Operators
SELECT last_name, salary
FROM employees
WHERE salary <= 3000 ;
--display salary between 2500 to 3500
SELECT last_name, salary
FROM employees
WHERE salary BETWEEN 2500 AND 3500 ;

--using in opreter to test value in list
SELECT employee_id, last_name, salary, manager_id
FROM employees
WHERE manager_id IN (100, 101, 201) ;
-- search all first name start with s
SELECT first_name
FROM employees WHERE first_name LIKE 'S%' ;
--display all last name which has second latter o
SELECT last_name
FROM employees
WHERE last_name LIKE '_o%' ;
--Test for nulls with the IS NULL operator.
SELECT last_name, manager_id
FROM employees
WHERE manager_id IS NULL ;
--AND requires both the component conditions to be true
SELECT employee_id, last_name, job_id, salary
FROM employees
WHERE salary >= 10000
AND job_id LIKE '%MAN%' ;


SELECT last_name, job_id
FROM employees
WHERE job_id NOT IN ('IT_PROG', 'ST_CLERK', 'SA_REP') ;

--Rules of Precedence
SELECT last_name, job_id, salary
FROM employees
WHERE job_id = 'SA_REP'
OR job_id = 'AD_PRES'
AND salary > 15000;
--Using the ORDER BY Clause
SELECT last_name, job_id, department_id, hire_date
FROM employees
ORDER BY hire_date ;
--Sorting in descending order
SELECT last_name, job_id, department_id, hire_date
FROM employees
ORDER BY hire_date DESC ;
--Sorting by column alias
SELECT employee_id, last_name, salary*12 annsal
FROM employees
ORDER BY annsal ;
--Sorting by using the column’s numeric position
SELECT last_name, job_id, department_id, hire_date
FROM employees
ORDER BY 3;
--Sorting by multiple columns
SELECT last_name, department_id, salary
FROM employees
ORDER BY department_id, salary DESC;
--Use a variable prefixed with an ampersand (&) to prompt the user for a value
SELECT employee_id, last_name, salary, department_id
FROM employees
WHERE employee_id = &employee_num ;
--Use single quotation marks for date and character values
SELECT last_name, department_id, salary*12
FROM employees
WHERE job_id = '&job_title' ;

SELECT employee_id, last_name, job_id,&column_name
FROM employees
WHERE &condition
ORDER BY &order_column ;

--Use double ampersand (&&) if you want to reuse the variable value without prompting the user each time:
  
SELECT employee_id, last_name, job_id, &&column_name
FROM employees
ORDER BY &column_name ;

DEFINE employee_num = 200

SELECT employee_id, last_name, salary, department_id
FROM employees
WHERE employee_id = &employee_num ;

UNDEFINE employee_num

SET VERIFY ON
SELECT employee_id, last_name, salary
FROM employees
WHERE employee_id = &employee_num;

