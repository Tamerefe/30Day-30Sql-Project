SELECT Product, SUM(Revenue) AS Revenue
FROM Sales
WHERE Region = 'North'
GROUP BY Product
HAVING SUM(Revenue) > 10000;

SELECT Product, AVG(Quantity) AS AvgQuantity
FROM Sales
GROUP BY Product;