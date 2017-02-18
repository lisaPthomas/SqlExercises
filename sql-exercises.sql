1. 
SELECT CategoryName, Description FROM Categories  

2. 
SELECT CustomerID, CompanyName, ContactName 
FROM Customers
WHERE City = 'London'

3:
SELECT * FROM Suppliers
WHERE ContactTitle IN ('Marketing Manager', 'Sales Representative')
AND Fax IS NOT NULL

4:
SELECT CustomerID FROM Orders
WHERE RequiredDate BETWEEN '1997/01/01'
AND '1998/01/01'
AND Freight < 100

5:
SELECT CompanyName, ContactName, Country, ContactTitle
FROM Customers
WHERE ContactTitle = 'Owner'
AND Country in ('Mexico', 'Sweden','Germany')

6:
SELECT COUNT(*) 
FROM Products
WHERE Discontinued =1

7:
SELECT CategoryName,[Description]
FROM Categories
WHERE CategoryName LIKE 'Co%'

8:
SELECT CompanyName, City, Country, PostalCode
FROM Suppliers
WHERE Address LIKE '%rue%'
ORDER BY CompanyName

9:
SELECT ProductID, SUM(Quantity) as TotalQuantity
FROM [Order Details]
GROUP BY ProductID

10: 
SELECT c.ContactName, c.Address
FROM Customers c INNER JOIN Orders o
ON c.CustomerID = o.CustomerID
WHERE o.ShipVia = 1

11:
SELECT CompanyName, ContactName, ContactTitle, Region
FROM Suppliers
WHERE Region IS NOT NULL

12:
SELECT ProductName
FROM Products
WHERE CategoryID = 2

13.
SELECT *
FROM Orders o INNER JOIN Customers c
ON o.CustomerID = c.CustomerID

14.
INSERT INTO Shippers (CompanyName)
VALUES ('Amazon')

15.
UPDATE Shippers
SET CompanyName = 'Amazon Prime'
WHERE CompanyName = 'Amazon'

16. 
SELECT s.CompanyName, Round(Sum(o.Freight), 0) as TotalFreight
FROM Orders o INNER JOIN Shippers s
ON o.ShipVia = s.ShipperID
GROUP BY s.CompanyName 
 

17. 
SELECT CONCAT (FirstName, ' ', LastName) 
AS 'DisplayName'
FROM Employees

18.
INSERT INTO Customers (CustomerID, ContactName, CompanyName)
VALUES ('ABCDE', 'Steve Irwin', 'JamesMichelVin LLP')

INSERT INTO Orders (CustomerID, OrderDate)
VALUES ('ABCDE', '2017-02-07')

INSERT INTO [Order Details] (OrderID, ProductID, Quantity )
VALUES (11078, 6, 1)

INSERT INTO Products (ProductID, ProductName)
VALUES (6, 'Grandmas Boysenberry Spread')

19.
INSERT INTO Customers (CustomerID, ContactName, CompanyName)
VALUES ('CATKY', 'Steve Jobs', 'JamesMichelVin LLP')

INSERT INTO Orders (CustomerID, OrderDate)
VALUES (@@IDENTITY, '2017-02-07')

INSERT INTO [Order Details] (OrderID, ProductID)
VALUES (@@IDENTITY, (SELECT ProductId FROM Products WHERE ProductName = 'Grandma''s Boysenberry Spread'))

	
20.
SELECT ProductName, UnitsinStock
FROM Products
WHERE UnitsinStock >= 100



 


