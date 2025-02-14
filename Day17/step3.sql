SELECT o.OrderID, c.CustomerName, p.ProductName, o.Quantity, 
       (o.Quantity * p.ProductPrice) AS TotalPrice
FROM Orders o
JOIN Customers c ON o.CustomerID = c.CustomerID
JOIN Products p ON o.ProductID = p.ProductID;
