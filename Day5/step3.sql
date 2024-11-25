SELECT ProductName, SalesAmount
FROM Product
ORDER BY SalesAmount DESC;

SELECT *
FROM Product;

SELECT ProductName, Category, Price, SalesAmount
FROM Product
ORDER BY SalesAmount DESC
FETCH FIRST 5 ROWS ONLY;

SELECT *
FROM Product;