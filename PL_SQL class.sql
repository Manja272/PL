-- DECLARE
-- BEGIN
-- END;

-- BEGIN
--     DBMS_OUTPUT.PUT_LINE('hello');
-- end;

-- DECLARE
--     student_name VARCHAR2(50):= 'MAnjunatha';
-- BEGIN
--     DBMS_OUTPUT.PUT_LINE('hello  ' || student_name);
-- end;

-- DECLARE
--     TYPE emp_record is RECORD (
--         emp_id number, emp_name varchar2(20), emp_salary number(13,2)    );
--         e emp_record;
-- BEGIN
--     e.emp_id:=100;
--     e.emp_name:='Abhi';
--     e.emp_salary:=20000;
--     DBMS_OUTPUT.PUT_LINE(e.emp_id||' ' ||e.emp_name||' '||e.emp_salary );
-- end;

-- select first_name from hr.employees where EMPLOYEE_ID=101;
-- DECLARE
--     emp_name VARCHAR2(10);
--     emp_salary number;
-- BEGIN
--     SELECT first_name, salary into emp_name, emp_salary from hr.EMPLOYEES where EMPLOYEE_ID=123;
--     DBMS_OUTPUT.PUT_LINE(emp_name || ' ' || emp_salary);
-- end;

-- DECLARE
--     emp_status VARCHAR2(20);
-- BEGIN
--     SELECT case when salary>50000 then 'high' else 'low' END
--     into emp_status from hr.EMPLOYEES where EMPLOYEE_ID=101;
--     DBMS_OUTPUT.PUT_LINE(emp_status);
-- end;

-- DECLARE
--     number_of_rows number;
-- BEGIN
--     select count(*) into number_of_rows from hr.EMPLOYEES;
--     DBMS_OUTPUT.PUT_LINE(number_of_rows);
-- end;

-- DECLARE
--     salary_range number;
-- BEGIN 
--     SELECT max(salary)-min(salary) into salary_range from hr.EMPLOYEES;
--     DBMS_OUTPUT.PUT_LINE(salary_range);
-- end;

-- DECLARE
--     max_salary number;
--     min_salary number;
-- BEGIN
--     select max(salary), min(salary) into max_salary, min_salary from hr.EMPLOYEES;
--     DBMS_OUTPUT.PUT_LINE(max_salary - min_salary);
-- end;

DECLARE
    var_num number := 1;
BEGIN
        WHILE var_num < 5 LOOP
            DBMS_OUTPUT.PUT_LINE(var_num);
            var_num := var_num + 1;
        end loop;
end;


