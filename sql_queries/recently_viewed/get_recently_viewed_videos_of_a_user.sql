-- Script to get recently viewed videos of a user

WITH recently_viewed AS (
    SELECT *
    FROM video_views
    WHERE user_id = 1
    ORDER BY updated_at DESC
    LIMIT 10 OFFSET 0
),
recently_viewed_video_details AS (
    SELECT videos.id AS video_id, channel_id, title, watch_time_in_seconds, duration_in_seconds, url
    FROM videos
    JOIN recently_viewed
    ON videos.id = recently_viewed.video_id
    ORDER BY recently_viewed.updated_at DESC
)
SELECT recently_viewed_video_details.video_id as video_id,
       name AS channel_name, title as video_title,
       watch_time_in_seconds, duration_in_seconds, url
FROM channels
JOIN recently_viewed_video_details
ON channels.id = recently_viewed_video_details.channel_id;