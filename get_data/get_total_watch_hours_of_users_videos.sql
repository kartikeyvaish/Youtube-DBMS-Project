-- -- Script to get Total no. of watch hours of user's videos.

SELECT ROUND(SUM(duration_in_seconds) / 3600, 2) as total_duration 
FROM videos
JOIN channels ON videos.channel_id = channels.channel_id
WHERE channels.owner_id = 1005;