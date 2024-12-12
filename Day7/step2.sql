INSERT INTO Books
    (BookID, Title, Author, Genre, Price)
VALUES
    (1, 'The Great Gatsby', 'F. Scott Fitzgerald', 'Fiction', 196);
INSERT INTO Books
    (BookID, Title, Author, Genre, Price)
VALUES
    (2, '1984', 'George Orwell', 'Dystopian', 67);

INSERT INTO Members
    (MemberID, FullName, Email, MembershipDate)
VALUES
    (204, 'Kordean Orgen', 'korden@email.com', TO_DATE('2024-10-12', 'YYYY-MM-DD'));
INSERT INTO Members
    (MemberID, FullName, Email, MembershipDate)
VALUES
    (178, 'Billy Adrean', 'orgen@email.com', TO_DATE('2018-01-15', 'YYYY-MM-DD'));

INSERT INTO BorrowingRecords
    (RecordID, MemberID, BookID, BorrowDate, ReturnDate)
VALUES
    (98, 178, 1, TO_DATE('2024-09-01', 'YYYY-MM-DD'), TO_DATE('2024-10-15', 'YYYY-MM-DD'));
INSERT INTO BorrowingRecords
    (RecordID, MemberID, BookID, BorrowDate, ReturnDate)
VALUES
    (99, 204, 2, TO_DATE('2024-11-27', 'YYYY-MM-DD'), TO_DATE('2024-12-13', 'YYYY-MM-DD'));
