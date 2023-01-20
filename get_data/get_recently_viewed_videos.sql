-- Script to get recently watched videos of a user id = 90

WITH recently_viewed_videos AS (
  SELECT viewed_video_id, watch_time_in_seconds FROM video_views
  WHERE viewed_by_user_id = 90
  ORDER BY created_at DESC
  LIMIT 10
)
SELECT videos.video_id, videos.title, videos.description, recently_viewed_videos.watch_time_in_seconds
FROM videos
JOIN recently_viewed_videos
ON videos.video_id = recently_viewed_videos.viewed_video_id
ORDER BY created_at DESC;