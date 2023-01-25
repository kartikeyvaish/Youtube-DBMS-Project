-- Script to generate data for line graph of view counts of a video in a day

SELECT date_trunc('day', created_at) as day, count(*) as view_count
FROM video_views
WHERE video_id = 1
GROUP BY day
ORDER BY day;