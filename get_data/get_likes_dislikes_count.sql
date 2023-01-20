-- script to get likes and dislikes count for a video_id = 917

SELECT
	(SELECT count(*) from likes WHERE liked_video_id = 917) AS likes_count,
	(SELECT count(*) from dislikes WHERE disliked_video_id = 917) AS dislikes_count;