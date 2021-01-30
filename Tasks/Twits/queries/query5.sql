SELECT users.first_name AS UsersWithoutTwits 
FROM twits.users
LEFT JOIN twits.twits ON users.id = twits.author_id
WHERE twits.id IS Null;