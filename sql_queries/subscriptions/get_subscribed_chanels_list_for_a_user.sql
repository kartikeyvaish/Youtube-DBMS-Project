-- Script to get list of channels subscribed by a user

WITH subscribed_channels AS (
        SELECT channel_id, created_at, id
        FROM subscriptions
        WHERE user_id = 1
        ORDER BY subscriptions.created_at DESC
        LIMIT 10
)
SELECT subscribed_channels.id as subscription_id,
       name as channel_name,
       channels.id as channel_id,
       handle, (SELECT COUNT(*) FROM subscriptions WHERE channel_id = channels.id) AS total_subscribers,
       subscribed_channels.created_at,
       description
FROM channels
JOIN subscribed_channels
ON channels.id  = subscribed_channels.channel_id
ORDER BY subscribed_channels.created_at DESC;