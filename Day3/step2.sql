SELECT 
    TO_CHAR(PersonID) AS Id,
    FullName AS Name,
    Email AS Detail1,
    City AS Detail2,
    PhoneNumber AS Detail3
FROM 
    Customers
UNION
SELECT 
    NULL AS Id,
    ProductName AS Name,
    Category AS Detail1,
    TO_CHAR(Price) AS Detail2,
    CASE 
        WHEN IsAvailable = 1 THEN 'Available'
        ELSE 'Not Available'
    END AS Detail3
FROM 
    Product;
