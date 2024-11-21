CREATE TABLE Product (
    ProductName VARCHAR2(255),
    Category VARCHAR2(255),
    Price NUMBER(10, 2),
    IsAvailable NUMBER(1) DEFAULT 1,
    ExpirationDate DATE
);

INSERT INTO Product (ProductName, Category, Price, IsAvailable, ExpirationDate) VALUES ('Butter', 'Dairy', 2.49, 1, TO_DATE('2025-01-15', 'YYYY-MM-DD'));
INSERT INTO Product (ProductName, Category, Price, IsAvailable, ExpirationDate) VALUES ('Yogurt', 'Dairy', 0.89, 1, TO_DATE('2024-12-20', 'YYYY-MM-DD'));
INSERT INTO Product (ProductName, Category, Price, IsAvailable, ExpirationDate) VALUES ('Cereal', 'Breakfast', 4.99, 1, NULL);
INSERT INTO Product (ProductName, Category, Price, IsAvailable, ExpirationDate) VALUES ('Bananas', 'Fruits', 0.59, 1, TO_DATE('2024-12-01', 'YYYY-MM-DD'));
INSERT INTO Product (ProductName, Category, Price, IsAvailable, ExpirationDate) VALUES ('Apples', 'Fruits', 0.79, 1, TO_DATE('2024-12-05', 'YYYY-MM-DD'));
INSERT INTO Product (ProductName, Category, Price, IsAvailable, ExpirationDate) VALUES ('Carrots', 'Vegetables', 0.49, 1, TO_DATE('2024-12-03', 'YYYY-MM-DD'));
INSERT INTO Product (ProductName, Category, Price, IsAvailable, ExpirationDate) VALUES ('Potatoes', 'Vegetables', 0.69, 1, TO_DATE('2024-12-07', 'YYYY-MM-DD'));
INSERT INTO Product (ProductName, Category, Price, IsAvailable, ExpirationDate) VALUES ('Onions', 'Vegetables', 0.39, 1, TO_DATE('2024-12-10', 'YYYY-MM-DD'));
INSERT INTO Product (ProductName, Category, Price, IsAvailable, ExpirationDate) VALUES ('Chicken', 'Meat', 5.99, 1, TO_DATE('2024-12-25', 'YYYY-MM-DD'));
INSERT INTO Product (ProductName, Category, Price, IsAvailable, ExpirationDate) VALUES ('Beef', 'Meat', 9.99, 1, TO_DATE('2024-12-30', 'YYYY-MM-DD'));
INSERT INTO Product (ProductName, Category, Price, IsAvailable, ExpirationDate) VALUES ('Pork', 'Meat', 7.99, 1, TO_DATE('2024-12-28', 'YYYY-MM-DD'));
INSERT INTO Product (ProductName, Category, Price, IsAvailable, ExpirationDate) VALUES ('Salmon', 'Seafood', 10.99, 1, TO_DATE('2024-12-31', 'YYYY-MM-DD'));
INSERT INTO Product (ProductName, Category, Price, IsAvailable, ExpirationDate) VALUES ('Shrimp', 'Seafood', 12.99, 1, TO_DATE('2025-01-01', 'YYYY-MM-DD'));
INSERT INTO Product (ProductName, Category, Price, IsAvailable, ExpirationDate) VALUES ('Pasta', 'Pantry', 2.79, 1, TO_DATE('2025-02-01', 'YYYY-MM-DD'));
INSERT INTO Product (ProductName, Category, Price, IsAvailable, ExpirationDate) VALUES ('Tomato Sauce', 'Pantry', 1.99, 1, TO_DATE('2025-03-01', 'YYYY-MM-DD'));
INSERT INTO Product (ProductName, Category, Price, IsAvailable, ExpirationDate) VALUES ('Chocolate', 'Snacks', 1.49, 1, TO_DATE('2025-04-15', 'YYYY-MM-DD'));
INSERT INTO Product (ProductName, Category, Price, IsAvailable, ExpirationDate) VALUES ('Chips', 'Snacks', 1.29, 1, TO_DATE('2025-05-01', 'YYYY-MM-DD'));
INSERT INTO Product (ProductName, Category, Price, IsAvailable, ExpirationDate) VALUES ('Laptop', 'Electronics', 999.99, 1, NULL);
INSERT INTO Product (ProductName, Category, Price, IsAvailable, ExpirationDate) VALUES ('Smartphone', 'Electronics', 699.99, 1, NULL);
INSERT INTO Product (ProductName, Category, Price, IsAvailable, ExpirationDate) VALUES ('Headphones', 'Electronics', 199.99, 1, NULL);
INSERT INTO Product (ProductName, Category, Price, IsAvailable, ExpirationDate) VALUES ('T-Shirt', 'Clothing', 19.99, 1, NULL);
INSERT INTO Product (ProductName, Category, Price, IsAvailable, ExpirationDate) VALUES ('Jeans', 'Clothing', 49.99, 1, NULL);
INSERT INTO Product (ProductName, Category, Price, IsAvailable, ExpirationDate) VALUES ('Jacket', 'Clothing', 89.99, 1, NULL);
INSERT INTO Product (ProductName, Category, Price, IsAvailable, ExpirationDate) VALUES ('Novel', 'Books', 14.99, 1, NULL);
INSERT INTO Product (ProductName, Category, Price, IsAvailable, ExpirationDate) VALUES ('Science Fiction', 'Books', 24.99, 1, NULL);
INSERT INTO Product (ProductName, Category, Price, IsAvailable, ExpirationDate) VALUES ('Biography', 'Books', 29.99, 1, NULL);

SELECT * FROM Product;