# CONCEPT OF PL/SQL
     1.PL/SQL IF

DECLARE  
   a number(3) := 500;  
BEGIN  
   -- check the boolean condition using if statement   
   IF( a < 20 ) THEN  
      -- if condition is true then print the following    
      dbms_output.put_line('a is less than 20 ' );  
   ELSE  
      dbms_output.put_line('a is not less than 20 ' );  
   END IF;  
   dbms_output.put_line('value of a is : ' || a);  
END;  


  OUTPUT
a is not less than 20
value of a is : 500
PL/SQL procedure successfully completed. 
                             2.PL/SQL CASE
DECLARE  
   grade char(1) := 'A';  
BEGIN  
   CASE grade  
      when 'A' then dbms_output.put_line('Excellent');  
      when 'B' then dbms_output.put_line('Very good');  
      when 'C' then dbms_output.put_line('Good');  
      when 'D' then dbms_output.put_line('Average');  
      when 'F' then dbms_output.put_line('Passed with Grace');  
      else dbms_output.put_line('Failed');  
   END CASE;  
END;  

OUTPUT

Excellent
PL/SQL procedure successfully completed. 
                     3.PL/SQL FOR LOOP

BEGIN  
FOR k IN 1..10 LOOP  
-- note that k was not declared  
DBMS_OUTPUT.PUT_LINE(k);  
END LOOP;  
END;   

OUTPUT
1
2
3
4
5
6
7
8
9
10


          4.PL/SQL WHILE LOOP
DECLARE  
i INTEGER := 1;  
BEGIN  
WHILE i <= 10 LOOP  
DBMS_OUTPUT.PUT_LINE(i);  
i := i+1;  
END LOOP;  
END;  
OUTPUT
1
2
3
4
5
6
7
8
9
10

                5.PL/SQL FUNCTION
create or replace function adder(n1 in number, n2 in number)    
return number    
is     
n3 number(8);    
begin    
n3 :=n1+n2;    
return n3;    
end;    
/    

DECLARE    
   n3 number(2);    
BEGIN    
   n3 := adder(11,22);    
   dbms_output.put_line('Addition is: ' || n3);    
END;    
/    
OUTPUT
Addition is: 33
Statement processed.
0.05 seconds
