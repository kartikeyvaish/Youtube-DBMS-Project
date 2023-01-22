-- Script to get user's channels list

SELECT *
FROM channels
WHERE user_id = 2
ORDER BY created_at DESC;