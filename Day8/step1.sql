CREATE TABLE Customers
(
    CustomerID NUMBER(10) PRIMARY KEY,
    FullName VARCHAR2(255)
);

CREATE TABLE Tables
(
    TableID NUMBER(10) PRIMARY KEY,
    Seats NUMBER(10),
    Locat VARCHAR2(50)
);

CREATE TABLE Reservations
(
    ReservationID NUMBER(10) PRIMARY KEY,
    CustomerID NUMBER(10),
    TableID NUMBER(10),
    ReservationDate TIMESTAMP,
    Statu VARCHAR2(20) DEFAULT 'Empty',
    CONSTRAINT chk_status CHECK (Statu IN ('Reserved', 'Empty')),
    FOREIGN KEY (CustomerID) REFERENCES Customers(CustomerID),
    FOREIGN KEY (TableID) REFERENCES Tables(TableID)
);