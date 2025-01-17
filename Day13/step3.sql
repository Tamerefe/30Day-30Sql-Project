INSERT INTO Products (ProductID, ProductName, StockQuantity, ReorderLevel) VALUES (1, 'Laptop', 10, 15);
INSERT INTO Products (ProductID, ProductName, StockQuantity, ReorderLevel) VALUES (2, 'Smartphone', 20, 25);
INSERT INTO Products (ProductID, ProductName, StockQuantity, ReorderLevel) VALUES (3, 'Tablet', 15, 20);
INSERT INTO Products (ProductID, ProductName, StockQuantity, ReorderLevel) VALUES (4, 'Headphones', 30, 35);
INSERT INTO Products (ProductID, ProductName, StockQuantity, ReorderLevel) VALUES (5, 'Keyboard', 25, 30);
INSERT INTO Products (ProductID, ProductName, StockQuantity, ReorderLevel) VALUES (6, 'Mouse', 40, 45);
INSERT INTO Products (ProductID, ProductName, StockQuantity, ReorderLevel) VALUES (7, 'Monitor', 20, 25);
INSERT INTO Products (ProductID, ProductName, StockQuantity, ReorderLevel) VALUES (8, 'Printer', 15, 20);
INSERT INTO Products (ProductID, ProductName, StockQuantity, ReorderLevel) VALUES (9, 'Scanner', 10, 15);
INSERT INTO Products (ProductID, ProductName, StockQuantity, ReorderLevel) VALUES (10, 'Projector', 5, 10);

UPDATE Products
SET StockQuantity = 5
WHERE ProductID = 1;

SELECT * FROM Alerts ORDER BY AlertDate DESC;