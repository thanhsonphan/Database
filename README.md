 1. Download Docker Desktop
 2. Clone Database from Git to your computer
 3. Run this command to create database container: 
      docker-compose up db
 4. Run the Script file:
    4.1. Create Database
          ./script.sh create-db
    4.2. Create Tables
         ./script.sh create-table
    4.2. Insert data 
          ./script.sh insert-testdata
  5. Check your database after inserting data
     5.1. Access to the Database, run this command:
      docker exec -it app-db psql -U postgres -d management-app
     5.2. To show your database, run this command:
      \l
     5.3. To show the tables, run this command:
      \dt
     5.4. To show the data from users table:
      SELECT * FROM USERS
      
     
