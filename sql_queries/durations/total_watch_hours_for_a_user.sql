-- Script to get total watch hours for a user
-- Suppose, a user has viewed 3 videos till now.
--         Video 1 for 1 hour
--         Video 2 for 30 minutes
--         Video 3 for 30 seconds
-- Total watch hour for that user on the plarform = 1:30:30

SELECT
    COUNT(*) AS total_videos_watched,
    ROUND(SUM(watch_time_in_seconds) / 3600.0, 2) AS total_watch_hours
FROM video_views
WHERE user_id = 2;