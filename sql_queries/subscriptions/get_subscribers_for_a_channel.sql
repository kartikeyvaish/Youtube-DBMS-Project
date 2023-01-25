-- Script to get subscribers for a channel

WITH subscribed_users AS (
	SELECT subscriptions.user_id, subscriptions.created_at
	FROM subscriptions
	JOIN channels ON subscriptions.channel_id = channels.id
	WHERE channels.id = 165
    ORDER BY subscriptions.created_at DESC
	LIMIT 10
)
SELECT id, name
FROM users
JOIN subscribed_users
ON subscribed_users.user_id = users.id
ORDER BY subscribed_users.created_at DESC;