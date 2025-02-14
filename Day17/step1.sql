CREATE TABLE Customers (
    CustomerID VARCHAR2(10) PRIMARY KEY,
    CustomerName VARCHAR2(50),
    CustomerEmail VARCHAR2(100)
);

INSERT INTO Customers VALUES ('C001', 'Alice', 'alice@email.com');
INSERT INTO Customers VALUES ('C002', 'Bob', 'bob@email.com');

CREATE TABLE Products (
    ProductID VARCHAR2(10) PRIMARY KEY,
    ProductName VARCHAR2(100),
    ProductPrice NUMBER(10,2)
);

INSERT INTO Products VALUES ('P001', 'Laptop', 1000);
INSERT INTO Products VALUES ('P002', 'Phone', 600);
INSERT INTO Products VALUES ('P003', 'Tablet', 500);

CREATE TABLE Orders (
    OrderID NUMBER PRIMARY KEY,
    CustomerID VARCHAR2(10) REFERENCES Customers(CustomerID),
    ProductID VARCHAR2(10) REFERENCES Products(ProductID),
    Quantity NUMBER,
    TotalPrice NUMBER(10,2)
);

