use library_db;
select * from Customers;
select * from orders;

SELECT Name FROM Customers
WHERE CustomerID = (
    SELECT CustomerID FROM Orders
    ORDER BY Amount DESC
    LIMIT 1);

SELECT Name FROM Customers c
WHERE EXISTS (
    SELECT 1 FROM Orders o
    WHERE o.CustomerID = c.CustomerID AND o.Amount > 10000);

SELECT Name FROM Customers
WHERE CustomerID IN (
    SELECT DISTINCT CustomerID
    FROM Orders);


SELECT Name FROM Customers c
WHERE EXISTS (
    SELECT 1 FROM Orders o
    WHERE o.CustomerID = c.CustomerID AND o.Product = 'Mouse');

