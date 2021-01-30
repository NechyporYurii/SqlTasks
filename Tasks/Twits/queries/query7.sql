(SELECT twits_content.content AS Twits, twits.date AS Date FROM twits.twits
INNER JOIN twits.twits_content ON twits.id = twits_content.twit_id
INNER JOIN twits.users ON twits.author_id = users.id
WHERE users.first_name = 'Vitalina')
UNION
(SELECT twits_content.content, twits.date 
FROM twits.followers
INNER JOIN twits.users ON followers.user_id = users.id
INNER JOIN twits.twits ON followers.follower_id = twits.author_id
INNER JOIN twits.twits_content ON twits.id = twits_content.twit_id
WHERE first_name = 'Vitalina')
ORDER BY Date DESC;