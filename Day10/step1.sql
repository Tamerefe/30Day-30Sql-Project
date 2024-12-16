CREATE TABLE Sales (
    SaleID NUMBER(10) PRIMARY KEY,
    Product VARCHAR2(100) NOT NULL,
    Region VARCHAR2(50) NOT NULL,
    Quantity NUMBER(30) NOT NULL,
    Revenue NUMBER(10, 2) NOT NULL
);

INSERT INTO Sales (SaleID, Product, Region, Quantity, Revenue) VALUES (1, 'Laptop', 'North', 10, 15000.00);
INSERT INTO Sales (SaleID, Product, Region, Quantity, Revenue) VALUES (2, 'Smartphone', 'North', 20, 12000.00);
INSERT INTO Sales (SaleID, Product, Region, Quantity, Revenue) VALUES (3, 'Laptop', 'South', 5, 7500.00);
INSERT INTO Sales (SaleID, Product, Region, Quantity, Revenue) VALUES (4, 'Tablet', 'North', 15, 4500.00);
INSERT INTO Sales (SaleID, Product, Region, Quantity, Revenue) VALUES (5, 'Smartphone', 'South', 25, 15000.00);
INSERT INTO Sales (SaleID, Product, Region, Quantity, Revenue) VALUES (6, 'Tablet', 'East', 10, 3000.00);
INSERT INTO Sales (SaleID, Product, Region, Quantity, Revenue) VALUES (7, 'Laptop', 'East', 8, 12000.00);
INSERT INTO Sales (SaleID, Product, Region, Quantity, Revenue) VALUES (8, 'Smartphone', 'West', 30, 18000.00);
INSERT INTO Sales (SaleID, Product, Region, Quantity, Revenue) VALUES (9, 'Tablet', 'West', 12, 3600.00);
INSERT INTO Sales (SaleID, Product, Region, Quantity, Revenue) VALUES (10, 'Laptop', 'West', 6, 9000.00);