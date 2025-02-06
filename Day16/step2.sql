CREATE INDEX idx_post_category ON Posts(category_id);
CREATE INDEX idx_post_user ON Posts(user_id);
CREATE INDEX idx_comment_post ON Comments(post_id);

INSERT INTO Users (username, email, password_hash) VALUES ('john_doe', 'john@example.com', 'password123');
INSERT INTO Users (username, email, password_hash) VALUES ('jane_doe', 'jane@example.com', 'password456');
INSERT INTO Users (username, email, password_hash) VALUES ('alice_smith', 'alice@example.com', 'password789');

INSERT INTO Categories (category_name, description) VALUES ('Technology', 'Posts related to tech trends');
INSERT INTO Categories (category_name, description) VALUES ('Health', 'Posts related to health and wellness');
INSERT INTO Categories (category_name, description) VALUES ('Finance', 'Posts related to financial advice');

INSERT INTO Posts (user_id, category_id, title, content) VALUES (1, 1, 'The Future of AI', 'Content about AI advancements...');
INSERT INTO Posts (user_id, category_id, title, content) VALUES (2, 2, 'Healthy Living Tips', 'Content about living a healthy lifestyle...');
INSERT INTO Posts (user_id, category_id, title, content) VALUES (3, 3, 'Investing 101', 'Content about basic investing strategies...');

INSERT INTO Comments (post_id, user_id, comment_text) VALUES (1, 1, 'Great article on AI!');
INSERT INTO Comments (post_id, user_id, comment_text) VALUES (2, 2, 'Very informative post!');
INSERT INTO Comments (post_id, user_id, comment_text) VALUES (3, 3, 'Thanks for the tips!');
