SELECT posts.title AS Post, GROUP_CONCAT(tags.name) AS Tags 
FROM blog_db.posts 
INNER JOIN blog_db.posts_tags 
ON posts.id = posts_tags.post_id 
INNER JOIN blog_db.tags ON posts_tags.tag_id = tags.tag_id
GROUP BY posts.title;