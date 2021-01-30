SELECT twits_content.content AS "Last published Twits"
FROM twits.twits_content
INNER JOIN twits.twits
ON twits_content.twit_id = twits.id
ORDER BY twits.date DESC LIMIT 5;