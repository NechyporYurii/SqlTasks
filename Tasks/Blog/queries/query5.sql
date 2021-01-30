SELECT GROUP_CONCAT(posts.title) AS PostsWithoutTags 
FROM blog_db.posts 
LEFT JOIN blog_db.posts_tags 
ON posts.id = posts_tags.post_id 
WHERE posts_tags.id IS NULL; 