SELECT posts.title AS PostName, posts.date AS DateOfPublishing 
FROM blog_db.posts 
ORDER BY date DESC LIMIT 5;