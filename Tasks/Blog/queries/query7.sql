SELECT tags.name AS TagName, COUNT(posts_tags.post_id) AS PostsQuantity
FROM blog_db.posts_tags 
INNER JOIN blog_db.tags 
ON posts_tags.tag_id = tags.tag_id 
GROUP BY posts_tags.tag_id;