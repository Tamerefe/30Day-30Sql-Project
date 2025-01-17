CREATE SEQUENCE Alerts_SEQ
START WITH 1
INCREMENT BY 1
NOCACHE;

CREATE OR REPLACE TRIGGER TRG_Stock_Alert
AFTER UPDATE OF StockQuantity ON Products
FOR EACH ROW
WHEN (NEW.StockQuantity < NEW.ReorderLevel)
BEGIN
    INSERT INTO Alerts (AlertID, ProductID, AlertMessage)
    VALUES (Alerts_SEQ.NEXTVAL, :NEW.ProductID, 
            'Stock below reorder level for product: ' || :NEW.ProductName);
END;
