CREATE TABLE Orders_Unnormalized (
    OrderID NUMBER PRIMARY KEY,
    CustomerID VARCHAR2(10),
    CustomerName VARCHAR2(50),
    CustomerEmail VARCHAR2(100),
    ProductID VARCHAR2(10),
    ProductName VARCHAR2(100),
    Quantity NUMBER,
    TotalPrice NUMBER(10,2)
);

INSERT INTO Orders_Unnormalized VALUES (101, 'C001', 'Alice', 'alice@email.com', 'P001', 'Laptop', 1, 1000);
INSERT INTO Orders_Unnormalized VALUES (102, 'C002', 'Bob', 'bob@email.com', 'P002', 'Phone', 2, 1200);
INSERT INTO Orders_Unnormalized VALUES (103, 'C001', 'Alice', 'alice@email.com', 'P003', 'Tablet', 1, 500);

SELECT *
FROM Orders_Unnormalized o