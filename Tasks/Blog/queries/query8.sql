SELECT users.first_name AS UserName, COUNT(posts.author_id) AS PostsQuantity
FROM blog_db.posts 
INNER JOIN blog_db.users 
ON posts.author_id = users.user_id 
GROUP BY posts.author_id 
ORDER BY COUNT(posts.author_id) 
DESC LIMIT 5;