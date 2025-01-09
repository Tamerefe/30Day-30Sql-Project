SELECT * FROM Post
WHERE Title LIKE 't%';

SELECT * FROM Social
WHERE Username NOT IN ('Diana', 'Hank', 'Kathy');

SELECT PostNumber, Content, CreatedDate
FROM Post
WHERE UserID IN (1, 4, 7, 10);

SELECT p.PostNumber, p.Content AS PostContent, c.Content AS CommentContent, u.Username AS Commenter
FROM Post p
JOIN Comments c ON p.PostNumber = c.PostID
JOIN Social u ON c.UserID = u.UserID;