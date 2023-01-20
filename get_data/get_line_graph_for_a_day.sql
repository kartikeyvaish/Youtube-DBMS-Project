SELECT 
    DATE_TRUNC('day', created_at) as date,
    COUNT(*) as views
FROM video_views
WHERE viewed_video_id = 408
GROUP BY date
ORDER BY date