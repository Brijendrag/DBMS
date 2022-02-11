3. TO ADD RECTRITIONS ON TABLES
           
                          #TO ADD PRIMARY KEY AND NOT NULL CONSTRAINTS
            CREATE TABLE projects (
                   project_id INT PRIMARY KEY,
                   project_name VARCHAR(255),
                   start_date DATE NOT NULL,
                  end_date DATE NOT NULL);

                     3 TO ADD FOREIGN KEY AND UNIQUE CONSTRSINT
            
            CREATE TABLE projects (
                      project_id INT AUTO_INCREMENT PRIMARY KEY,
                      project_name VARCHAR(255),
                      start_date DATE NOT NULL,
                      end_date DATE NOT NULL);

         CREATE TABLE project_milestones(
                     milestone_id INT AUTO_INCREMENT PRIMARY KEY,
                     project_id INT UNIQUE,
                     milestone_name VARCHAR(100));

      


          CREATE TABLE project_milestones (
                       milestone_id INT AUTO_INCREMENT PRIMARY KEY,
                       project_id INT,
                       milestone_name VARCHAR(100),
                       FOREIGN KEY (project_id) REFERENCES projects (project_id));
