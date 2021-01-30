SELECT twits_content.content AS Twit, COUNT(twits_comments.id) AS CommentsQuantity 
FROM twits.twits
INNER JOIN twits.twits_comments ON twits.id = twits_comments.twit_id
INNER JOIN twits.twits_content ON twits.id = twits_content.twit_id
GROUP BY twits.id;