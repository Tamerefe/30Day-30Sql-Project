INSERT INTO products (productId, ProductName, price) VALUES (1, 'Laptop', 1000);
INSERT INTO products (productId, ProductName, price) VALUES (2, 'Smartphone', 500);
INSERT INTO products (productId, ProductName, price) VALUES (3, 'Tablet', 300);
INSERT INTO products (productId, ProductName, price) VALUES (4, 'Headphones', 50);
INSERT INTO products (productId, ProductName, price) VALUES (5, 'Keyboard', 20);
INSERT INTO products (productId, ProductName, price) VALUES (6, 'Mouse', 10);
INSERT INTO products (productId, ProductName, price) VALUES (7, 'Monitor', 200);
INSERT INTO products (productId, ProductName, price) VALUES (8, 'Printer', 150);
INSERT INTO products (productId, ProductName, price) VALUES (9, 'Scanner', 100);
INSERT INTO products (productId, ProductName, price) VALUES (10, 'Webcam', 30);

SELECT 
    productId, ProductName, price, calculate_discount(price, 10) AS TenDiscountPrice
FROM 
    products;