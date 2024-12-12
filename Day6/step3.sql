SELECT
    C.PersonID AS CustomerID,
    C.FullName AS CustomerName,
    C.Email,
    C.City,
    C.PhoneNumber,
    O.OrderID,
    O.OrderDate,
    O.Status AS OrderStatus,
    P.PaymentMethod,
    P.PaymentDate,
    P.TotalAmount
    
FROM
    Customers C
JOIN
    Orders O ON C.PersonID = O.UserID
JOIN
    Payments P ON O.OrderID = P.OrderID;