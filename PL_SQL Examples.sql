-- 1. Simple SELECT INTO Statement
-- DECLARE
--     emp_name VARCHAR2(20);
-- BEGIN 
--     select first_name into emp_name from hr.EMPLOYEES where EMPLOYEE_ID=101;
--     DBMS_OUTPUT.PUT_LINE('employee name ' || emp_name);
-- END;

-- -- 2. SELECT Multiple Columns INTO Variables
-- DECLARE
--     emp_name VARCHAR2(20);
--     emp_salary NUMBER;
    
-- BEGIN
--     select FIRST_NAME, salary into emp_name, emp_salary from hr.employees where employee_id = 123;
--     DBMS_OUTPUT.PUT_LINE('employee:' || emp_name || ' '|| 'salary:' || emp_salary );
-- end;

-- 3. Handling No Data Found Exception
-- DECLARE 
--     emp_salary NUMBER;
-- BEGIN
--     select salary into emp_salary from hr.EMPLOYEES where EMPLOYEE_ID=123;
--     DBMS_OUTPUT.PUT_LINE('salary: ' || emp_salary);
-- -- EXCEPTION
-- --     WHEN No_data_found  THEN
-- --         DBMS_OUTPUT.PUT_LINE('No employee found with thid ID');
-- END;
-- //Display the employee salary in PL/SQL pgm (Exception is optional)

-- 4. Using SELECT with CASE Statement
-- DECLARE
--     emp_status VARCHAR2(20);
-- BEGIN
--     select
--         case
--             WHEN salary > 2000 then 'high'
--                 else 'low'
--         end
--     into emp_status
--     from hr.employees where employee_id=123;
--     DBMS_OUTPUT.PUT_LINE('employee_status:' || emp_status);
-- END;

-- 5. Using COUNT() with SELECT INTO
-- DECLARE
--     num_emp number;
-- BEGIN
--     select COUNT(*) into num_emp from hr.EMPLOYEES;
--     DBMS_OUTPUT.PUT_LINE('total_employees:' || num_emp);
-- end;
-- //Display the number of employee in PL/SQL

-- 6. Fetching MAX Salary
-- DECLARE
--     max_salary NUMBER;
-- BEGIN
--     SELECT max(salary) into max_salary FROM hr.EMPLOYEES;
--     DBMS_OUTPUT.PUT_LINE('highest salary ' || max_salary);
-- end;
-- //Display the maximim salary emploee

-- 7. Fetching MIN Salary
-- DECLARE
--     min_salary number;
-- BEGIN
--     select min(salary) into min_salary from hr.EMPLOYEES;
--     DBMS_OUTPUT.PUT_LINE('minimum-salary '|| min_salary); 
-- END;
-- //Display the only minimum salary of employee

-- 8. Fetching AVG Salary
-- declare
--     avg_salary number;
-- begin
--     select avg(salary) into avg_salary from hr.employees;
--     dbms_output.put_line('average salary is ' || avg_salary);
-- end;
-- //Displathe average salary of all the employees

-- 9. Fetching Employee Name Using Subquery
-- DECLARE
--     emp_name VARCHAR2(50);
-- BEGIN
--     SELECT first_name INTO emp_name FROM hr.employees 
--     WHERE department_id = (SELECT MIN(department_id) FROM hr.employees);
--     DBMS_OUTPUT.PUT_LINE('First Employee: ' || emp_name);
-- END;
-- //Display the lowest employee-id of the name 

-- 10. Fetching Data Using EXISTS
-- DECLARE
--     emp_exists VARCHAR2(40);
-- BEGIN
--     select 
--         CASE
--             when exists (select 1 from hr.employees where employee_id=105) then 'yes'
--             else 'no'
--             end into emp_exists from dual;
--     dbms_output.put_line('employee exists: ' || emp_exists);
-- end;
-- //Display the employee exists will be there or not

-- 11. Selecting Employee with Highest Salary
-- DECLARE
--     emp_name VARCHAR2(40);
--     emp_salary NUMBER;
-- BEGIN
--     select first_name, salary into emp_name, emp_salary from hr.EMPLOYEES
--     where SALARY = (SELECT MIN(salary) from hr.employees);
--     DBMS_OUTPUT.PUT_LINE('highest paid employee: '  || emp_name || 'salary' || emp_salary);
-- end;
-- //Display the lowest salary of employee name and salary

-- 12. Fetching Department Name
-- DECLARE
--     dept_name VARCHAR2(40);
-- BEGIN
--     SELECT department_name into dept_name from hr.DEPARTMENTS where DEPARTMENT_ID=10;
--     dbms_output.PUT_LINE('dapartment: ' || dept_name);
-- end;
-- //Display the department name of id=10

-- -- 13. Fetching Employee Count in a Department
-- DECLARE
--     emp_count VARCHAR2(40);
-- BEGIN
--     select count(*) into emp_count from hr.EMPLOYEES where DEPARTMENT_ID=100;
--     DBMS_OUTPUT.PUT_LINE('employees in department 100: ' || emp_count);
-- end;
-- //display the how many number of employees are there in department_id=100

-- 14. Fetching Sum of All Salaries
-- DECLARE
--     total_salary number;
-- BEGIN
--     select sum(salary) into total_salary from hr.EMPLOYEES;
--     DBMS_OUTPUT.PUT_LINE('sumof all salaries:' || total_salary);
-- end;
-- Display the all the sum of salary of employee

-- 15. Fetching Employee Joining Date
-- DECLARE
--     hire_date1 DATE;
-- BEGIN
--     select hire_date into hire_date1 from hr.EMPLOYEES where EMPLOYEE_ID=123;
--     DBMS_OUTPUT.PUT_LINE('employee of hire_date:' || hire_date1);
-- end;
-- //Display the hire_date of employee-id=123

-- 16. Selecting Second Highest Salary
-- DECLARE
--     Second_highest_salary number;
-- BEGIN
--     select DISTINCT salary into Second_highest_salary from hr.EMPLOYEES
--     where salary < (select max(salary) from hr.EMPLOYEES)
--     order by salary desc fetch first 1 row only;
--     DBMS_OUTPUT.PUT_LINE('secod_highest_salary:' || Second_highest_salary);
-- end;
-- //Display the second largest salary of employee

-- 17. Selecting Employees with Same Salary as John
-- DECLARE
--     emp_count number;
-- BEGIN
--     SELECT count(*) into emp_count from hr.EMPLOYEES 
--     where salary = (select salary from hr.EMPLOYEES where FIRST_NAME = 'John');
--     DBMS_OUTPUT.PUT_LINE('employees with johns salary' || emp_count);
-- END;

-- 18. Fetching Manager Name of an Employee
-- DECLARE
--     manager_name_id NUMBER;
-- BEGIN
--     select first_name into manager_name_id from hr.EMPLOYEES
--     where MANAGER_ID = (select MANAGER_ID from hr.EMPLOYEES where MANAGER_ID=114);
--     DBMS_OUTPUT.PUT_LINE('manager name: ' || manager_name_id);
-- end;

-- select manager_id from hr.employees;
