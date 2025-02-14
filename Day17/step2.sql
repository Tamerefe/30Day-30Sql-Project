CREATE OR REPLACE TRIGGER Calculate_TotalPrice
BEFORE INSERT OR UPDATE ON Orders
FOR EACH ROW
DECLARE
    v_ProductPrice NUMBER(10,2);
BEGIN
    SELECT ProductPrice INTO v_ProductPrice
    FROM Products
    WHERE ProductID = :NEW.ProductID;

    :NEW.TotalPrice := v_ProductPrice * :NEW.Quantity;
END;
/

INSERT INTO Orders (OrderID, CustomerID, ProductID, Quantity) VALUES (101, 'C001', 'P001', 1);
INSERT INTO Orders (OrderID, CustomerID, ProductID, Quantity) VALUES (102, 'C002', 'P002', 2);
INSERT INTO Orders (OrderID, CustomerID, ProductID, Quantity) VALUES (103, 'C001', 'P003', 1);

COMMIT;