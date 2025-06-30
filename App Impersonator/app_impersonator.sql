-- Project: App Impersonator --
-- Skills: CREATE TABLE, INSERT, SELECT, UPDATE, DELETE --
-- Goal: Simulate how a social media app like Instagram might store and manage user posts in a SQL database. --



-- Created table named Instagram posts --
CREATE TABLE instagram_posts (
    id INTEGER PRIMARY KEY,
    username TEXT,
    caption TEXT,
    likes INTEGER DEFAULT 0,
    date_posted DATE
);

-- Inserted sample data into instagram_posts --
INSERT INTO instagram_posts (username, caption, likes, date_posted) VALUES
    ('churdle', 'Last Day of School!!', 342, '2024-06-22'),
    ('issarat890', 'I miss this place so much.', 23, '2024-07-23'),
    ('flowahgurl2328', 'This is my favorite flower yet!', 7600, '2025-08-23');

-- Queried all posts --
SELECT * FROM instagram_posts;

-- Updated caption for post with id = 3 --
UPDATE instagram_posts
SET caption = 'These are my favorite flowers!'
WHERE id = 3;

-- Deleted post with id = 2 --
DELETE FROM instagram_posts
WHERE id = 2;

-- Queried all posts again to see changes --
SELECT * FROM instagram_posts;



