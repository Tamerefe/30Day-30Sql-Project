BEGIN
    -- Update the PhoneNumber for James Smith
    UPDATE Customers
    SET PhoneNumber = '555-789-1234'
    WHERE FullName = 'James Smith';
    
    -- Commit the changes
    COMMIT;
    
    -- Select All Records from Customers Table
    FOR rec IN (SELECT * FROM Customers) LOOP
        DBMS_OUTPUT.PUT_LINE('PersonID: ' || rec.PersonID || ', FullName: ' || rec.FullName || 
                             ', Email: ' || rec.Email || ', City: ' || rec.City || ', PhoneNumber: ' || rec.PhoneNumber);
    END LOOP;
    
END;
/
