CREATE INDEX idx_customer_date ON Orders(CustomerID, OrderDate);

SELECT OrderID, OrderDate, TotalPrice FROM Orders WHERE CustomerID = 123;

SELECT OrderID, OrderDate, TotalPrice FROM Orders 
WHERE CustomerID = 123 AND OrderDate BETWEEN TO_DATE('2023-01-01', 'YYYY-MM-DD') 
AND TO_DATE('2023-12-31', 'YYYY-MM-DD');