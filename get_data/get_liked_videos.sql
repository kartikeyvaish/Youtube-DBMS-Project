-- script to get liked videos of a user

WITH liked_videos as (
	SELECT liked_video_id 
	FROM likes
	WHERE liked_by_user_id = 1005
	ORDER BY liked_video_id
)
SELECT videos.video_id, videos.title, videos.duration_in_seconds
FROM videos
JOIN liked_videos ON liked_videos.liked_video_id = videos.video_id;
