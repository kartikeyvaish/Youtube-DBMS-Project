-- Script to dislike a Video
-- Script to dislike a video with video_id = 917 
-- and user who dislikes the video, his id = 1005


-- dislike a video if dislike doesn't already exists
INSERT INTO dislikes (disliked_video_id, disliked_by_user_id)
SELECT 917, 1005
WHERE NOT EXISTS (SELECT 1 FROM dislikes WHERE disliked_video_id = 917 AND disliked_by_user_id = 1005);

-- script to delete from likes if exists
DELETE FROM likes
WHERE liked_video_id = 917 AND liked_by_user_id = 1005;

-- get likes/dislikes count
SELECT (SELECT COUNT(*) FROM likes WHERE liked_video_id = 917 ) AS likes_count,
       (SELECT COUNT(*) FROM dislikes WHERE disliked_video_id = 917) AS dislikes_count;