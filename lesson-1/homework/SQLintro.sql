1.
  DATA - data is information - raw facts, figures, or dettails - that can be collected, stored, processed, and analyzed.
  DATABASE - an organized collection of data that can be easily accessed, managed, and updated.
  RELATIONAL DATABASE - is a type of database that stores and organizes data into tables, which are structured collection of raws and columns. 
  TABLE - a database objecct that stores data in rows and columns, similar to a spreadsheet.

2. Five key features of SQL Server:
 1.Data storage and management
 2.Transact-SQL (T-SQL)
 3.Security features
 4.High availabilty and disaster recovery
 5.Data tools and integration

3. Authentication modes:
 1.Windows Authentication
 2.SQL Server Authentication

4. create database schoolDB
5. CREATE TABLE STUDENTS (
STUDENTID INT PRIMARY KEY,
NAME VARCHAR(50),
AGE INT
);
6. SQL Server - Microsoft SQL Server is relational database management systems. (RDBMS)
It is a software platform used to store, manage,and retrieve data using structured models.
7. SSMS - SQL Server Management Studio is a graphical user interface (GUI) tool developed by Microsoft for managing SQL Server instances
8. SQL - Structured Query language is a language - a set of rules and syntax for querying and manipulating relational databases.

9. DQL - Data Query Language, and it is a subset of SQL used only for querying and retrieving data from a database.
10. DML- Data Manipulation Language is a subset of SQL used to insert, update, delete, and retrieve data stored in relational database.
11. DDL - Data Definition Language is a subset of SQL used to define and manage the structure of database objects such as tables, indexes, and schemas.
12. DCL - Data Control Language is a subset of SQL used to control access to data in a database - specifically who can do what.
13. insert into students (studentID, Name, Age) values
(1, 'Robert', 20),
(2, 'Bob', 22),
(3, 'Charlie', 19);
14. Go to https://learn.microsoft.com/en-us/sql/samples/adventureworks-install-configure?view=sql-server-ver16&tabs=ssms, 
find "Data Warehouse" column and select "AdventureWorksDW2022.bak". Once download has finished, go to
"Downloads" in "This PC", copy the file and go to "C" disk, open "Program files", find
"Microsoft SQL Server", open the folder and click on "MSSQL16.MSSQLSERVER02, enter and go
to the "Backup". Click "Continue" and save. Go to SSMS and right-click on the "Databases", select "Restore 
Database", select "Device" on the new window and click "...". then click "ADD", once the file has been added
click "OK", again "OK".		Restore process has finished.
