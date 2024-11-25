ALTER TABLE Product ADD SalesAmount NUMBER(10, 2);

UPDATE Product
SET SalesAmount = CASE
    WHEN ProductName = 'Butter' THEN 100
    WHEN ProductName = 'Yogurt' THEN 150
    WHEN ProductName = 'Cereal' THEN 200
    WHEN ProductName = 'Bananas' THEN 300
    WHEN ProductName = 'Apples' THEN 250
    WHEN ProductName = 'Carrots' THEN 180
    WHEN ProductName = 'Potatoes' THEN 220
    WHEN ProductName = 'Onions' THEN 170
    WHEN ProductName = 'Chicken' THEN 130
    WHEN ProductName = 'Beef' THEN 90
    WHEN ProductName = 'Pork' THEN 110
    WHEN ProductName = 'Salmon' THEN 80
    WHEN ProductName = 'Shrimp' THEN 70
    WHEN ProductName = 'Pasta' THEN 160
    WHEN ProductName = 'Tomato Sauce' THEN 140
    WHEN ProductName = 'Chocolate' THEN 190
    WHEN ProductName = 'Chips' THEN 210
    WHEN ProductName = 'Laptop' THEN 50
    WHEN ProductName = 'Smartphone' THEN 60
    WHEN ProductName = 'Headphones' THEN 70
    WHEN ProductName = 'T-Shirt' THEN 300
    WHEN ProductName = 'Jeans' THEN 200
    WHEN ProductName = 'Jacket' THEN 100
    WHEN ProductName = 'Novel' THEN 150
    WHEN ProductName = 'Science Fiction' THEN 120
    WHEN ProductName = 'Biography' THEN 110
    ELSE 0
END;

SELECT *
FROM Product;