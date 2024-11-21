BEGIN
    EXECUTE IMMEDIATE 'CREATE TABLE Customers (
        PersonID NUMBER(10),
        FullName VARCHAR2(255),
        Email VARCHAR2(255),
        City VARCHAR2(100),
        PhoneNumber VARCHAR2(20)
    )';
END;
/
