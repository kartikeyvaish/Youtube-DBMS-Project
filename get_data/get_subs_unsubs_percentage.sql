-- VIDEO_ID = 408

WITH video_channel AS (
  SELECT channel_id FROM videos WHERE video_id = 408
),
subscribed_users AS (
  SELECT subscriber_id FROM subscriptions
  WHERE subscribed_channel_id = (SELECT channel_id FROM video_channel)
),
viewed_users AS (
  SELECT viewed_by_user_id FROM video_views WHERE viewed_video_id = 408
)
SELECT
  COUNT(DISTINCT subscriber_id) as subscribed_users,
  COUNT(DISTINCT viewed_by_user_id) - COUNT(DISTINCT subscriber_id) as non_subscribed_users,
  ROUND((COUNT(DISTINCT subscriber_id) * 100.0) / COUNT(DISTINCT viewed_by_user_id), 2) as subscribed_users_percentage,
  ROUND(((COUNT(DISTINCT viewed_by_user_id) - COUNT(DISTINCT subscriber_id)) * 100.0) / COUNT(DISTINCT viewed_by_user_id), 2) as non_subscribed_users_percentage
FROM
  viewed_users
LEFT JOIN
  subscribed_users
ON
  viewed_users.viewed_by_user_id = subscribed_users.subscriber_id