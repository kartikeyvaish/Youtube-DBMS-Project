-- Script to get total number of hours of all videos uploaded by user

WITH user_videos AS (
  SELECT video_id FROM videos
  JOIN channels ON videos.channel_id = channels.channel_id
  WHERE channels.owner_id = 415
)
SELECT SUM(duration_in_seconds) / 3600 as total_watch_hours
FROM videos
WHERE video_id IN (SELECT video_id FROM user_videos)