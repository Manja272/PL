-- begin 
--  for i in 1..5 loop
--  dbms_output.put_line(i);
--  end loop;
-- end;


-- declare 
-- begin 
--  for i in 1..10 loop
--  dbms_output.put_line('iteration'||i);
--  end loop;
-- end;


-- declare 
-- begin 
--  for i in  reverse 1..10 loop
--  dbms_output.put_line(' reverse iteration'||i);
--  end loop;
-- end;


-- declare
-- begin 
--     for i in 1..10 LOOP
--     if mod(i,2)=1 then
--      dbms_output.put_line(i);
--      end if;
--      end loop;
-- end;

-- begin
--     for i in 1..100 LOOP
--     if mod(i,2)=2 then
--         dbms_output.put_line(i);
--         end if;
--         end loop;
--     end;  


--   1 to 10 squares of the numebers
--  begin
--      for i in reverse 1..10 loop
--          dbms_output.put_line(i ||' ' || i*i);
--      end loop;
--  end; 


-- --  fibonacci series
-- declare 
-- a number:=0;
-- b number:=1;
-- c number;
-- BEGIN
--     dbms_output.put_line(a);
--      dbms_output.put_line(b);
--      for i in 1..10 loop
--          c:=a+b;
--          dbms_output.put_line(c);
--          a:=b;
--          b:=c;
--      end loop;
--  end;


-- --  multiplication tables of 1 to 10 upto 20
-- DECLARE
--   table1 number:=2;
--   begin 
--     for num in 1..5 LOOP
--     dbms_output.put_line('multiplication table of num' || num);
--      for i in 1..10 LOOP
--       dbms_output.put_line(num || '*' || i || ':' ||i*num);
--        end loop;
--     end loop;
-- end;


-- -- finding odd number
-- DECLARE
-- x_value number:=7;
-- begin
--     if mod(x_value,2)=1 then
--     dbms_output.put_line(x_value || 'is even number');
--     else
--     dbms_output.put_line(x_value || 'is an odd number');
--     end if;
-- end;


-- --  finding odd number
-- DECLARE
-- x_value number:=12;
-- begin
--     if mod(x_value,2)=1 then
--     dbms_output.put_line(x_value || 'is even number');
--     else
--     dbms_output.put_line(x_value || 'is an odd number');
--     end if;
-- end;


-- -- create a simple statements by using while lop
-- DECLARE
-- counter number:=1;
-- BEGIN
--     while counter <=5 loop
--      dbms_output.put_line('counter value' || counter);
--      counter:=counter+1;
--      end loop;
-- end;


-- declare
-- volunteers number:=15;
-- BEGIN
--     while volunteers <=20 loop
--     dbms_output.put_line('volunteers list' || volunteers);
--     volunteers:=volunteers+1;
--     end loop;
-- end;


--  declare
--  counter number:=10;
--  BEGIN 
--     while counter >=1loop
--     dbms_output.put_line('counter value' || counter);
--       counter:=counter-1;
--     end loop;
--     end;


--     -- using continue and exit 
--     declare 
--      i number :=1;
--      BEGIN 
--         while i=+5 loop
--          if i=3 THEN
--          i:=i+1;
--          continue;
--          end if;
--          dbms_output.put_line('number :' || i);
--          i:=i+1;
--           end loop;
--           end;


--  declare 
--      i number :=1;
--      BEGIN 
--         while i<=5 loop
--          if i=3 THEN
--          i:=i+1;
--          continue;
--          end if;
--          dbms_output.put_line('number :' || i);
--          i:=i+1;
--           end loop;
--           end;


-- declare
-- i number:=2;
-- BEGIN
--     while i>15 loop
--     if i=5 then
--     i:=i+1;
--     exit;
--     end if;
--     dbms_output.put_line('number:' || i);
--     i:=i+1;
--     end loop;
--     end;
--     DECLARE
--     i number:=1;
--     begin
--         while i<=10 loop
--         if i=4 then
--         i:=i+1;
--         continue;
--         end if;
--         dbms_output.put_line('number:'|| i);
--         end loop;
-- end;