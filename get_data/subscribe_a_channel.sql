-- -- Script to subscribe to a channel
-- -- user id = 1005
-- -- channel_id = 1012

DELETE FROM subscriptions WHERE subscription_id > 80000;

INSERT INTO subscriptions (subscribed_channel_id, subscriber_id)
SELECT 1012, 1005
WHERE NOT EXISTS (
    SELECT 1 FROM subscriptions
    WHERE subscribed_channel_id = 1012 AND subscriber_id = 1005
);

SELECT * from subscriptions ORDER BY subscription_id DESC;