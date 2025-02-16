CREATE TABLE Orders (
    OrderID NUMBER PRIMARY KEY,
    CustomerID NUMBER,
    ProductID NUMBER,
    OrderDate DATE,
    Quantity NUMBER,
    TotalPrice NUMBER(10,2),
    StatusP VARCHAR2(20)
);

BEGIN
    FOR i IN 1..10000 LOOP
        INSERT INTO Orders (OrderID, CustomerID, ProductID, OrderDate, Quantity, TotalPrice, StatusP)
        VALUES (
            i,
            MOD(i, 1000) + 1,
            MOD(i, 100) + 1,
            TO_DATE('2023-01-01', 'YYYY-MM-DD') + MOD(i, 365),
            MOD(i, 10) + 1,
            (MOD(i, 10) + 1) * 100,
            CASE MOD(i, 3) WHEN 0 THEN 'Pending' WHEN 1 THEN 'Shipped' ELSE 'Delivered' END
        );

        IF MOD(i, 5000) = 0 THEN
            COMMIT; 
        END IF;
    END LOOP;
    COMMIT;
END;
/

CREATE INDEX idx_customer ON Orders(CustomerID);
CREATE INDEX idx_product ON Orders(ProductID);
CREATE INDEX idx_status ON Orders(StatusP);

SELECT * FROM Orders WHERE CustomerID = 123;