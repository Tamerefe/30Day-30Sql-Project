SELECT p.post_id, p.title, p.content, u.username, c.category_name, p.created_at 
FROM Posts p
JOIN Users u ON p.user_id = u.user_id
JOIN Categories c ON p.category_id = c.category_id
ORDER BY p.created_at DESC;

SELECT u.username, COUNT(p.post_id) AS total_posts
FROM Users u
LEFT JOIN Posts p ON u.user_id = p.user_id
GROUP BY u.username
ORDER BY total_posts DESC;

SELECT post_id, title, created_at 
FROM Posts
WHERE created_at >= SYSDATE - 7
ORDER BY created_at DESC;

SELECT c.category_name, COUNT(p.post_id) AS post_count
FROM Categories c
LEFT JOIN Posts p ON c.category_id = p.category_id
GROUP BY c.category_name
ORDER BY post_count DESC;

SELECT p.post_id, p.title, u.username, COUNT(c.comment_id) AS total_comments
FROM Posts p
JOIN Users u ON p.user_id = u.user_id
LEFT JOIN Comments c ON p.post_id = c.post_id
GROUP BY p.post_id, p.title, u.username
ORDER BY total_comments DESC;