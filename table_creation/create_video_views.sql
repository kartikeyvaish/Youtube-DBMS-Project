DROP TABLE IF EXISTS video_views;

CREATE TABLE video_views (
	video_view_id bigserial NOT NULL PRIMARY KEY,
	viewed_by_user_id bigserial NOT NULL,
	viewed_video_id bigserial NOT NULL,
	watch_time_in_seconds numeric DEFAULT 0,
    created_at TIMESTAMP NOT NULL DEFAULT NOW(),
    updated_at TIMESTAMP NOT NULL DEFAULT NOW(),
	
	CONSTRAINT fk_viewed_by_user_id
		FOREIGN KEY(viewed_by_user_id)
			REFERENCES users(user_id)
			ON DELETE CASCADE,
	
	CONSTRAINT fk_viewed_video_id
		FOREIGN KEY(viewed_video_id)
			REFERENCES videos(video_id)
			ON DELETE CASCADE
);

WITH random_user AS (
  SELECT user_id
  FROM users
  ORDER BY RANDOM()
  LIMIT 500
), random_video AS (
  SELECT video_id
  FROM videos
  ORDER BY RANDOM()
  LIMIT 800
)
INSERT INTO video_views (viewed_video_id, viewed_by_user_id, watch_time_in_seconds) 
SELECT random_video.video_id, random_user.user_id, CAST ( random_user.user_id AS numeric )
FROM random_user CROSS JOIN random_video
LEFT JOIN video_views ON video_views.viewed_video_id = random_video.video_id 
AND video_views.viewed_by_user_id = random_user.user_id
WHERE video_views.viewed_video_id IS NULL;

SELECT * from video_views;