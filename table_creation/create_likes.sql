DROP TABLE IF EXISTS likes;

CREATE TABLE likes (
	like_id bigserial NOT NULL PRIMARY KEY,
	liked_video_id bigserial NOT NULL,
	liked_by_user_id bigserial NOT NULL,
    created_at TIMESTAMP NOT NULL DEFAULT NOW(),
    updated_at TIMESTAMP NOT NULL DEFAULT NOW(),
	
	CONSTRAINT fk_liked_video_id
		FOREIGN KEY(liked_video_id)
			REFERENCES videos(video_id)
			ON DELETE CASCADE,
	
	CONSTRAINT fk_liked_by_user_id
		FOREIGN KEY(liked_by_user_id)
			REFERENCES users(user_id)
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
INSERT INTO likes (liked_video_id, liked_by_user_id) 
SELECT random_video.video_id, random_user.user_id
FROM random_user CROSS JOIN random_video
LEFT JOIN likes ON likes.liked_video_id = random_video.video_id 
AND likes.liked_by_user_id = random_user.user_id
WHERE likes.liked_video_id IS NULL;

SELECT * from likes;