BEGIN
    -- Delete the record for Isabella Lee
    DELETE FROM Customers
    WHERE Email = 'isabella.lee@example.com';
    
    -- Commit the changes
    COMMIT;
    
    -- Select All Records from Customers Table
    FOR rec IN (SELECT * FROM Customers) LOOP
        DBMS_OUTPUT.PUT_LINE('PersonID: ' || rec.PersonID || ', FullName: ' || rec.FullName || 
                             ', Email: ' || rec.Email || ', City: ' || rec.City || ', PhoneNumber: ' || rec.PhoneNumber);
    END LOOP;
    
END;
/
