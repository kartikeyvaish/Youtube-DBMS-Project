-- Script to get subscribers count for a channel

SELECT COUNT(*) as total_subscribers
FROM subscriptions
WHERE channel_id = 165;