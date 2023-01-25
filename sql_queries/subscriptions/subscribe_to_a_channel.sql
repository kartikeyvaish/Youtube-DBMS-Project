INSERT INTO subscriptions (user_id, channel_id)
VALUES (1, 165)
ON CONFLICT (user_id, channel_id)
DO NOTHING;