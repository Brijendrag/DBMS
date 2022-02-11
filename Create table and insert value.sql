1. create table and insert values in TABLE

      CREATE TABLE EMPLOYEES(EMPLOYEE_ID INT,FIRST_NAME varchar(50),LAST_NAME varchar(50),EMAIL varchar(50));
  
      INSERT INTO EMPLOYEE (EMPLOYEE_ID,FIRST_NAME,LAST_NAME,EMAIL,)
      VALUES
             ( 100, 'brijendra ' , 'goyal '  , 'brij3ndragoyal@sqltutorial.org' ) ,     
             ( 101, 'Ram' , 'Mishra '   , 'ram.mishra@sqltutorial.org'  ),    
             ( 102, 'Jatin' , ' Chai '  , 'jatin.chai@sqltutorial.org'    ) ,   
             ( 103, 'Prabhat' , 'Patel'   , 'prabhat.patel@sqltutorial.org'  ),
             ( 104, 'Rajan' , 'Baba' , 'rajan.baba@sqltutorial.org ' ) ;     
      
	   

      SELECT * FROM employees;


      | employee_id | first_name  | last_name   | email                             | 
      +-------------+-------------+-------------+-----------------------------------+
      |         100 | piyush      | niranjan    | piyushniranjan@sqltutorial.org    | 
      |         101 | Ram         | Mishra      | ram.mishra@sqltutorial.org        | 
      |         102 | Jatin       | Chai        | jatin.chai@sqltutorial.org        | 
      |         103 | Prabhat     | Patel       | prabhat.patel@sqltutorial.org     |
      |         104 | Rajan       | Baba        | rajan.baba@sqltutorial.org        | 
      
