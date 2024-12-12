SELECT B.Title, B.Author, BR.BorrowDate, BR.ReturnDate
FROM BorrowingRecords BR
JOIN Books B ON BR.BookID = B.BookID
WHERE BR.MemberID = 204;
