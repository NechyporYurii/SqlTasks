SELECT users.first_name AS UsersWithFollowers
FROM twits.users 
INNER JOIN twits.followers 
ON users.id = followers.user_id
GROUP BY user_id;