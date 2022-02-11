SELECT * FROM CUSTOMER;

ID	NAME	AGE	ADDRESS	        SALARY
1	Ramesh	23	Allahabad	20000
2	Suresh	22	Kanpur    	22000
3	Mahesh	24	Ghaziabad	24000
4	Chandan	25	Noida    	26000
5	Alex	21	Paris           28000
6	Sunita	20	Delhi	        30000

DECLARE  
   c_id customers.id%type;  
   c_name customers.name%type;  
   c_addr customers.address%type;  
   CURSOR c_customers is  
      SELECT id, name, address FROM customers;  
BEGIN  
   OPEN c_customers;  
   LOOP  
      FETCH c_customers into c_id, c_name, c_addr;  
      EXIT WHEN c_customers%notfound;  
      dbms_output.put_line(c_id || ' ' || c_name || ' ' || c_addr);  
   END LOOP;  
   CLOSE c_customers;  
END;  
/  
Output:
1  Ramesh  Allahabad
2  Suresh  Kanpur
3  Mahesh  Ghaziabad
4  Chandan  Noida
5  Alex  Paris
6  Sunita  Delhi
PL/SQL procedure successfully completed. 


                   # TRIGGER
CREATE OR REPLACE TRIGGER display_salary_changes  
BEFORE DELETE OR INSERT OR UPDATE ON customers  
FOR EACH ROW  
WHEN (NEW.ID > 0)  
DECLARE  
   sal_diff number;  
BEGIN  
   sal_diff := :NEW.salary  - :OLD.salary;  
   dbms_output.put_line('Old salary: ' || :OLD.salary);  
   dbms_output.put_line('New salary: ' || :NEW.salary);  
   dbms_output.put_line('Salary difference: ' || sal_diff);  
END;  
/  
OUTPUT 
TRIGGER CREATED

DECLARE   
   total_rows number(2);  
BEGIN  
   UPDATE  customers  
   SET salary = salary + 5000;  
   IF sql%notfound THEN  
      dbms_output.put_line('no customers updated');  
   ELSIF sql%found THEN  
      total_rows := sql%rowcount;  
      dbms_output.put_line( total_rows || ' customers updated ');  
   END IF;   
END;  
/  
Output:
Old salary: 20000
New salary: 25000
Salary difference: 5000
Old salary: 22000
New salary: 27000
Salary difference: 5000
Old salary: 24000
New salary: 29000
Salary difference: 5000
Old salary: 26000
New salary: 31000
Salary difference: 5000
Old salary: 28000
New salary: 33000
Salary difference: 5000
Old salary: 30000
New salary: 35000
Salary difference: 5000
6 customers updated 
