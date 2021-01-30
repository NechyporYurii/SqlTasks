SELECT GROUP_CONCAT(comments_content.content) AS Comments
FROM twits.comments 
INNER JOIN twits.comments_content 
ON comments.id = comments_content.comment_id
WHERE comments.date > NOW() - INTERVAL 10 HOUR 
AND comments.date < NOW();