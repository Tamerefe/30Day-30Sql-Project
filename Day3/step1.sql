CREATE TABLE Customers(
    PersonID NUMBER(10),
    FullName VARCHAR2(255),
    Email VARCHAR2(255),
    City VARCHAR2(100),
    PhoneNumber VARCHAR2(20)
);
INSERT INTO Customers(PersonID, FullName, Email, City, PhoneNumber)
VALUES(7652, 'Emma Watson', 'emma.watson@example.com', 'London', '44-20-7946-1234');
INSERT INTO Customers(PersonID, FullName, Email, City, PhoneNumber)
VALUES(7352, 'John Doe', 'john.doe@example.com', 'New York', '555-567-8901');

CREATE TABLE Product(
    ProductName VARCHAR2(255),
    Category VARCHAR2(255),
    Price NUMBER(10, 2),
    IsAvailable NUMBER(1) DEFAULT 1,
    ExpirationDate DATE
);

INSERT INTO Product (ProductName, Category, Price, IsAvailable, ExpirationDate) 
VALUES ('Butter', 'Dairy', 2.49, 1, TO_DATE('2025-01-15', 'YYYY-MM-DD'));
INSERT INTO Product (ProductName, Category, Price, IsAvailable, ExpirationDate) 
VALUES ('Yogurt', 'Dairy', 0.89, 1, TO_DATE('2024-12-20', 'YYYY-MM-DD'));


