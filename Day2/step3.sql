UPDATE Product
SET Discount = CASE
    WHEN Category = 'Electronics' THEN 10.00
    WHEN Category = 'Clothing' THEN 15.00
    WHEN Category = 'Books' THEN 5.00
    ELSE 0.00
END;

SELECT *
FROM Product;