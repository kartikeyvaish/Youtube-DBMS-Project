-- script to get list of subscribers 
-- channel id = 720

SELECT users.user_id, users.name
FROM subscriptions
JOIN users ON subscriptions.subscriber_id = users.user_id
WHERE subscriptions.subscribed_channel_id = 720;