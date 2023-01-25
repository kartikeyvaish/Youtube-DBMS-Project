-- Script to get subscribed:unsubscribed users percentage for a video

WITH viewed_users_ids AS (
    SELECT user_id, video_id FROM video_views WHERE video_id = 1
),
video_details AS (
    SELECT id as channel_id FROM channels WHERE id = (SELECT video_id FROM viewed_users_ids LIMIT 1)
),
subscribed_users AS (
    SELECT * FROM subscriptions
    JOIN viewed_users_ids
    ON subscriptions.user_id = viewed_users_ids.user_id
    WHERE subscriptions.channel_id = (SELECT channel_id FROM video_details)
),
counts AS (
    SELECT
        (SELECT COUNT(*) FROM viewed_users_ids) as total_views,
        (SELECT COUNT(*) FROM subscribed_users) as total_subscribed_users
)
SELECT
    ROUND((total_subscribed_users * 100.0) / total_views, 2) as subscribed_users_percentage,
    ROUND(((total_views - total_subscribed_users) * 100.0) / total_views, 2) as non_subscribed_users_percentage
FROM counts;