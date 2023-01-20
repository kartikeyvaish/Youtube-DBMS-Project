-- Script to like a Video
-- Script to like a video with video_id = 917 
-- and user who likes the video, his id = 1005

-- like a video if like doesn't already exists
INSERT INTO likes (liked_video_id, liked_by_user_id)
SELECT 917, 1005
WHERE NOT EXISTS (SELECT 1 FROM likes WHERE liked_video_id = 917 AND liked_by_user_id = 1005);

-- Delete from dislikes if exists
DELETE FROM dislikes
WHERE disliked_video_id = 917 AND disliked_by_user_id = 1005;

-- Get likes/dislikes count for the video
SELECT (SELECT COUNT(*) FROM likes WHERE liked_video_id = 917) AS likes_count,
       (SELECT COUNT(*) FROM dislikes WHERE disliked_video_id = 917) AS dislikes_count;