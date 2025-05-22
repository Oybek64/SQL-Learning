1 SELECT TOP 5 *
FROM EMPLOYEES;

2 SELECT DISTINCT CATEGORY
   FROM PRODUCTS;

3 SELECT * FROM PRODUCTS
WHERE PRICE >100;

4 SELECT *
FROM Customers
WHERE FirstName LIKE 'A%';

5 SELECT * FROM PRODUCTS
ORDER BY PRICE ASC;

6 SELECT *
FROM Employees
WHERE Salary >= 60000
  AND DepartmentName = 'HR';

7 SELECT EmployeeID, FirstName, LastName, DepartmentName, Salary, HireDate, Age, Email, ISNULL(Email, 'noemail@example.com') AS Email
FROM Employees;

8 SELECT *
FROM Products
WHERE Price BETWEEN 50 AND 100;

9 SELECT DISTINCT Category, ProductName
FROM Products;

10 SELECT DISTINCT Category, ProductName
FROM Poducts
ORDER BY ProductName DESC;

11 SELECT TOP 10 *
FROM Products
ORDER BY PRICE DESC

12 SELECT 
  EmployeeID,
  FirstName,
  LastName,
  COALESCE(FirstName, LastName) AS FirstAvailableName
FROM Employees;

13 SELECT DISTINCT CATEGORY, PRICE 
FROM PRODUCTS

14 SELECT * FROM EMPLOYEES
WHERE (AGE BETWEEN 30 AND 40) 
 OR (DEPARTMENT = 'MARKETING');

15 SELECT * FROM EMPLOYEES
WHERE (AGE BETWEEN 30 AND 40)
OR (DepartmentName = 'MARKETING');
  
16  SELECT *
FROM Products
WHERE Price <= 1000
  AND Stock > 50
ORDER BY Stock ASC;

17 SELECT *
FROM Products
WHERE ProductName LIKE '%e%';

18 SELECT *
FROM EMPLOYEES
WHERE DEPARTMENT IN ('HR', 'IT', 'FINANCE');

19 SELECT *
FROM CUSTOMERS
ORDER BY CITY ASC,
POSTALCODE DESC;

20 SELECT TOP(5) *
FROM Products
ORDER BY SalesAmount DESC;

21 SELECT 
  EmployeeID,
  FirstName,
  LastName,
  FirstName + ' ' + LastName AS FullName
FROM Employees; 
  
22 SELECT DISTINCT Category, ProductName, Price
FROM Products
WHERE Price > 50;

23 SELECT *
FROM Products
WHERE Price < 0.1 * (SELECT AVG(Price) FROM Products);

24 SELECT * 
FROM EMPLOYEES 
WHERE AGE < 30
AND DEPARTMENT IN('HR', 'IT')

25 SELECT *
FROM Customers
WHERE Email LIKE '%@gmail.com%';

26 SELECT *
FROM Employees
WHERE Salary > ALL (
    SELECT Salary
    FROM Employees
    WHERE Department = 'Sales'
);

27 SELECT *
FROM Orders
WHERE LATEST_DATE BETWEEN DATEADD(DAY, -180, GETDATE()) AND GETDATE();
