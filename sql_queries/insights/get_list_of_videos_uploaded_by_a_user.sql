-- Script to get list of videos uploaded by a user

WITH users_channels AS (
    SELECT id as channel_id, name as channel_name
    FROM channels
    WHERE user_id = 2
),
videos_list AS (
    SELECT id as video_id, title as video_title, description as video_description, url, duration_in_seconds
    FROM videos
    WHERE channel_id IN (SELECT channel_id FROM users_channels)
    ORDER BY created_at DESC
)
SELECT * FROM videos_list;