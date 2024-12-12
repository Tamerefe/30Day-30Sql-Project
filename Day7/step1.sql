CREATE TABLE Books(
    BookID NUMBER(10) PRIMARY KEY,
    Title VARCHAR2(255),
    Author VARCHAR2(255),
    Genre VARCHAR2(255),
    Price NUMBER(10, 2)
);

CREATE TABLE Members(
    MemberID NUMBER(10) PRIMARY KEY,
    FullName VARCHAR2(255),
    Email VARCHAR2(255),
    MembershipDate DATE
);

CREATE TABLE BorrowingRecords(
    RecordID NUMBER(10) PRIMARY KEY,
    MemberID NUMBER(10),
    BookID NUMBER(10),
    BorrowDate DATE,
    ReturnDate DATE,
    Status VARCHAR2(20) DEFAULT 'Pending',
    CONSTRAINT chk_status CHECK (Status IN ('Pending', 'Returned', 'Overdue', 'Lost')),
    FOREIGN KEY (MemberID) REFERENCES Members(MemberID) ON DELETE CASCADE,
    FOREIGN KEY (BookID) REFERENCES Books(BookID) ON DELETE CASCADE
);