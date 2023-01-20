-- script to get list of videos uploaded by a user

SELECT videos.video_id, videos.duration_in_seconds, videos.created_at 
FROM videos
JOIN channels ON videos.channel_id = channels.channel_id
WHERE channels.owner_id = 90;