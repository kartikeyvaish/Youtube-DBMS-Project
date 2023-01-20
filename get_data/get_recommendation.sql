-- Script to get videos based on recently viewed

WITH recently_viewed_videos AS (
  SELECT viewed_video_id FROM video_views
  WHERE viewed_by_user_id = 45
  ORDER BY created_at DESC
  LIMIT 10
)
SELECT videos.*, channels.channel_name
FROM videos
JOIN channels ON videos.channel_id = channels.channel_id
WHERE video_id IN (SELECT viewed_video_id FROM recently_viewed_videos)
ORDER BY created_at DESC