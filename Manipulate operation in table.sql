TO MANUPULATE THE OPERATIONS ON THE TABLE


              UPDATE employees SET last_name = 'Chandra'
              WHERE employee_id = 101 ;



           SELECT * FROM TABLE EMPLOYEE;

      | employee_id | first_name  | last_name   | email                             | 
      +-------------+-------------+-------------+-----------------------------------+
      |         100 | Brijendra     | goyal     | bhaskar.sahu@sqltutorial.org      | 
      |         101 | Ram         | Chandra     | ram.mishra@sqltutorial.org        | 
      |         102 | Jatin       | Chai        | jatin.chai@sqltutorial.org        | 
      |         103 | Prabhat     | Patel       | prabhat.patel@sqltutorial.org     |
      |         104 | Rajan       | Baba        | rajan.baba@sqltutorial.org        | 
      
    

       DELETE FROM employees WHERE employee_id=103;

      
       SELECT * FROM TABLE EMPLOYEE;

      
      
      | employee_id | first_name  | last_name   | email                             | 
      +-------------+-------------+-------------+-----------------------------------+
      |         100 | brijendra      |goyal     | bhaskar.sahu@sqltutorial.org      | 
      |         101 | Ram       | Chandra     | ram.mishra@sqltutorial.org        | 
      |         102 | Jatin       | Chai        | jatin.chai@sqltutorial.org        | 
     
      |         104 |  Rajan      | Baba        | rajan.baba@sqltutorial.org        | 
      
