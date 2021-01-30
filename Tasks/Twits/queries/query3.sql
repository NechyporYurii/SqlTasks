SELECT users.first_name AS UserName, COUNT(followers.id) AS FollowersQuantity
FROM twits.users INNER JOIN twits.followers
ON users.id = followers.user_id
GROUP BY followers.user_id;