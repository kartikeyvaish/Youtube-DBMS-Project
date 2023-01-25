-- Script to get total hours of all videos uploaded by a user (maybe on multiple channels)

WITH users_channels AS (
    SELECT id
    FROM channels
    WHERE user_id = 62
),
video_duration_list AS (
    SELECT duration_in_seconds
    FROM videos
    JOIN users_channels
    ON videos.channel_id = users_channels.id
)
SELECT ROUND(SUM(duration_in_seconds) / 3600.0, 2) AS total_hours FROM video_duration_list;