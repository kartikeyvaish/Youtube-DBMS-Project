-- Script to get list of videos on a channel

WITH videos_list AS (
    SELECT id as video_id, title as video_title, description as video_description, url, duration_in_seconds
    FROM videos
    WHERE channel_id = 460
    ORDER BY created_at DESC
)
SELECT * FROM videos_list;