SELECT COUNT(*) AS PostsQuantity
FROM blog_db.posts
WHERE date = CURDATE() - INTERVAL 1 DAY;