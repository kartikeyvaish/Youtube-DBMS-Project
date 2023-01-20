-- Script to get likes count, comments count and views count
-- video id = 917

SELECT 'likes_count' as count_type, count(*) as count FROM likes WHERE liked_video_id = 917
UNION
SELECT 'comments_count' as count_type, count(*) as count FROM comments WHERE commented_on_video_id = 917
UNION
SELECT 'total_views' as count_type, count(*) as count FROM video_views WHERE viewed_video_id = 917;