-- Script to get total hours of all videos on a channel

SELECT ROUND(SUM(duration_in_seconds) / 3600.0, 2) AS total_hours
FROM videos
WHERE channel_id = 62;