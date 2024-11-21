SELECT ProductName, Price
FROM Product
WHERE Price > 1 AND IsAvailable = 1;

SELECT ProductName, Price
FROM Product
ORDER BY Price DESC;