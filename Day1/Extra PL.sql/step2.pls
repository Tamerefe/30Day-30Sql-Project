BEGIN
    -- Insert Data into Customers Table
    INSERT INTO Customers (PersonID, FullName, Email, City, PhoneNumber) 
    VALUES (7652, 'Emma Watson', 'emma.watson@example.com', 'London', '44-20-7946-1234');
    
    INSERT INTO Customers (PersonID, FullName, Email, City, PhoneNumber) 
    VALUES (7352, 'John Doe', 'john.doe@example.com', 'New York', '555-567-8901');
    
    INSERT INTO Customers (PersonID, FullName, Email, City, PhoneNumber) 
    VALUES (1012, 'Olivia Johnson', 'olivia.johnson@example.com', 'Sydney', '61-2-1234-5678');
    
    INSERT INTO Customers (PersonID, FullName, Email, City, PhoneNumber) 
    VALUES (8273, 'Liam Brown', 'liam.brown@example.com', 'Toronto', '1-416-123-4567');
    
    INSERT INTO Customers (PersonID, FullName, Email, City, PhoneNumber) 
    VALUES (9832, 'Sophia Miller', 'sophia.miller@example.com', 'Berlin', '49-30-2345-6789');
    
    INSERT INTO Customers (PersonID, FullName, Email, City, PhoneNumber) 
    VALUES (1235, 'James Smith', 'james.smith@example.com', 'Chicago', '555-789-1234');
    
    INSERT INTO Customers (PersonID, FullName, Email, City, PhoneNumber) 
    VALUES (4689, 'Isabella Lee', 'isabella.lee@example.com', 'Seoul', '82-2-9876-5432');
    
    INSERT INTO Customers (PersonID, FullName, Email, City, PhoneNumber) 
    VALUES (9203, 'William Wilson', 'william.wilson@example.com', 'Tokyo', '81-3-4321-5678');
    
    INSERT INTO Customers (PersonID, FullName, Email, City, PhoneNumber) 
    VALUES (8223, 'Mia Davis', 'mia.davis@example.com', 'Paris', '33-1-6543-2109');
    
    INSERT INTO Customers (PersonID, FullName, Email, City, PhoneNumber) 
    VALUES (3324, 'Noah Martinez', 'noah.martinez@example.com', 'Mexico City', '52-55-1234-5678');
    
    -- Commit the transactions
    COMMIT;
    
    -- Select All Records from Customers Table
    FOR rec IN (SELECT * FROM Customers) LOOP
        DBMS_OUTPUT.PUT_LINE('PersonID: ' || rec.PersonID || ', FullName: ' || rec.FullName || 
                             ', Email: ' || rec.Email || ', City: ' || rec.City || ', PhoneNumber: ' || rec.PhoneNumber);
    END LOOP;
    
END;
/
