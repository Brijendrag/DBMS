# DELETING TABLE 
      CREATE TABLE EMPLOYEES(EMPLOYEE_ID INT,FIRST_NAME varchar(50),LAST_NAME varchar(50),EMAIL varchar(50));
  
      INSERT INTO EMPLOYEE (EMPLOYEE_ID,FIRST_NAME,LAST_NAME,EMAIL,)
      VALUES
             ( 100, 'brijendra' ,  'goyal '  , 'brijendragoyal@sqltutorial.org' ) ,     
             ( 101,' Ram ', ' Mishra'   , 'ram.mishra@sqltutorial.org'  ),    
     
        SELECT * FROM employees;
      | employee_id | first_name  | last_name   | email                             | 
      +-------------+-------------+-------------+-----------------------------------+
      |         100 |brijendra     |goyal   | steven.king@sqltutorial.org       | 
      |         101 |  Ram        | Mishra      | neena.kochhar@sqltutorial.org     | 
      
     DROP TABLE employees;
     SELECT * FROM employees;
        
                 ---------------------------------------------------

      

                              # TO ADD FOREIGN KEY AND REMOVE 
         
         ALTER TABLE employees
         ADD PRIMARY KEY (employee_id);
        
         ALTER TABLE employees
         DROP PRIMARY KEY;
                               #TO ADD AND REMOVE FOREIGN KEY
          ALTER TABLE project_milestones
         ADD CONSTRAINT fk_project FOREIGN KEY(project_id)
         REFERENCES projects(project_id);
    
         ALTER TABLE table_name
         DROP CONSTRAINT fk_name;
