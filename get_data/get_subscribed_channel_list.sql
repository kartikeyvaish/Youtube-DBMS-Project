-- script to get list of subscribed channels by a user
SELECT channel_id,channel_name
FROM channels
JOIN subscriptions ON channels.channel_id = subscriptions.subscribed_channel_id
WHERE subscriptions.subscriber_id = 90;