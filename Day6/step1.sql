CREATE TABLE Products
(
    ProductName VARCHAR2(255),
    Category VARCHAR2(255),
    Price NUMBER(10, 2),
    Available VARCHAR2(20) DEFAULT 'Available' NOT NULL,
    CONSTRAINT chk_available CHECK (Available IN ('Available', 'Not-Available')),
    ExpirationDate DATE
);

CREATE TABLE Customers
(
    PersonID NUMBER(10) PRIMARY KEY,
    FullName VARCHAR2(255),
    Email VARCHAR2(255),
    City VARCHAR2(100),
    PhoneNumber VARCHAR2(20)
);

CREATE TABLE Orders
(
    OrderID NUMBER(10) PRIMARY KEY,
    UserID NUMBER(10),
    OrderDate DATE,
    Status VARCHAR2(20) DEFAULT 'Pending',
    CONSTRAINT chk_status CHECK (Status IN ('Pending', 'Completed', 'Cancelled')),
    FOREIGN KEY (UserID) REFERENCES Customers(PersonID) ON DELETE CASCADE
);

CREATE TABLE Payments
(
    OrderID NUMBER(10),
    PaymentDate TIMESTAMP DEFAULT CURRENT_TIMESTAMP,
    PaymentMethod VARCHAR2(50) NOT NULL,
    TotalAmount NUMBER(10, 2) NOT NULL,
    CONSTRAINT chk_payment_method CHECK (PaymentMethod IN ('Credit Card', 'Debit Card', 'PayPal', 'Bank Transfer')),
    FOREIGN KEY (OrderID) REFERENCES Orders(OrderID) ON DELETE CASCADE
);