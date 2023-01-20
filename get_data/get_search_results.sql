-- Script to search for a video

SELECT 'Video' as type, video_id, url as title FROM videos
WHERE LOWER(url) LIKE LOWER('%dummy%')
UNION
SELECT 'Channel' as type, channel_id, channel_name as title FROM channels
WHERE LOWER(channel_name) LIKE LOWER('%truth%')