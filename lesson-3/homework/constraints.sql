1.BULK INSERT is a T-SQL command in SQL Server used to import large amounts of data from a data file (like a CSV or TXT) into a SQL Server table quickly and efficiently.
2. Four common file formats that can be imported into SQL Server: CSV, XML, XLS/XLSX, JSON
3   CREATE TABLE PRODUCTS 
    (PRODUCTID INT PRIMARY KEY, PRODUCT_NAME VARCHAR (50), PRICE DECIMAL (10,2))
     SELECT * FROM PRODUCTS
4    INSERT INTO PRODUCTS VALUES ('1', 'PENCIL', 1.20),
                                 ('2', 'PEN', 1.12),
							                   ('3', 'HIGHLIGHTER', 1.15),
5 NULL - USED WHEN A COLUMN CAN BE LEFT EMPTY
  NOT NULL - USED WHEN A COLUMN MUST CONTAIN VALID DATA FOR EVERY ROW
6 ALTER TABLE PRODUCTS
  ADD CONSTRAINT UQ_PRODUCTS_PRODUCT_NAME UNIQUE (PRODUCT_NAME);
7 Ensures every product name in the Products table is unique. 
8 ALTER TABLE PRODUCTS
  ADD CATEGORY_ID INT
9 CREATE TABLE CATEGORIES (CATEGORY_ID INT PRIMARY KEY, CATEGORY_NAME VARCHAR (50) UNIQUE)
10 The IDENTITY column in SQL Server is used to automatically generate unique numeric values for new rows in a table. It’s often used as a primary key or unique identifier for each record.
11 BULK INSERT PRODUCTS
FROM 'C:\Users\user\Desktop\SQL\PRODUCTS123.txt'
WITH (FIELDTERMINATOR = ',',
ROWTERMINATOR = '\n',
FIRSTROW = 1)
12 ALTER TABLE PRODUCTS
ADD CONSTRAINT FK_PRODUCTS_CATEGORIES
FOREIGN KEY (CATEGORY_ID) REFERENCES CATEGORIES (CATEGORY_ID)
13 A primary key is a column or group of columns in a table that uniquely identifies each row.
   A UNIQUE key (or UNIQUE constraint) ensures that all values in a column (or combination of columns) are different — no duplicates are allowed
14 ALTER TABLE PRODUCTS
ADD CONSTRAINT CHK_PRICE_POSITIVE 
CHECK (PRICE > 0)
15 SELECT PRODUCTID,
       PRODUCT_NAME, 
	   ISNULL(PRICE, 0) AS PRICE, 
	   CATEGORY_ID
FROM PRODUCTS;
16 A foreign key (FK) is a column or set of columns in one table whose values must match the primary‑key 
(or another candidate‑key) values in a referenced table. Its sole purpose is to enforce referential integrity— 
guaranteeing that every relationship between the two tables always points to a valid row.
17 CREATE TABLE CUSTOMERS (CUSTOMER_ID INT, CUSTOMER_NAME VARCHAR (30), AGE INT CHECK (AGE >=18))  
18 CREATE TABLE EMPLOYEE (EMPLOYEE_ID INT IDENTITY (100, 10), NAME VARCHAR (50), AGE INT)
19 ISNULL Replaces a NULL value with a specified replacement value.
COALESCE Returns the first non-NULL value in a list of expressions.
20 CREATE TABLE EMPLOYEES (EMP_ID INT PRIMARY KEY, NAME NVARCHAR, EMAIL NVARCHAR UNIQUE)
21 CREATE TABLE Departments (
    DepartmentID INT PRIMARY KEY,
    DepartmentName NVARCHAR(100)
);

CREATE TABLE Employees (
    EmpID INT PRIMARY KEY,
    FullName NVARCHAR(100),
    DepartmentID INT,
    CONSTRAINT FK_Employees_Departments
        FOREIGN KEY (DepartmentID)
        REFERENCES Departments(DepartmentID)
        ON DELETE CASCADE
        ON UPDATE CASCADE
);
