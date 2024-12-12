INSERT INTO Products
    (ProductName, Category, Price, Available, ExpirationDate)
VALUES
    ('Yogurt', 'Dairy', 2.49, 'Available', TO_DATE('2025-01-15', 'YYYY-MM-DD'));
INSERT INTO Customers
    (PersonID, FullName, Email, City, PhoneNumber)
VALUES
    (1, 'John Sot', 'johnsot@email.com', 'California', '555-123-4567');
INSERT INTO Orders
    (OrderID, UserID, OrderDate, Status)
VALUES
    (7943, 1, TO_DATE('2024-12-12', 'YYYY-MM-DD'), 'Pending');
INSERT INTO Payments
    (OrderID, PaymentDate, PaymentMethod, TotalAmount)
VALUES
    (7943, SYSTIMESTAMP, 'Credit Card', 178.56);