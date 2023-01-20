DROP TABLE IF EXISTS dislikes;

CREATE TABLE dislikes (
	dislike_id bigserial NOT NULL PRIMARY KEY,
	disliked_video_id bigserial NOT NULL,
	disliked_by_user_id bigserial NOT NULL,
    created_at TIMESTAMP NOT NULL DEFAULT NOW(),
    updated_at TIMESTAMP NOT NULL DEFAULT NOW(),
	
	CONSTRAINT fk_disliked_video_id
		FOREIGN KEY(disliked_video_id)
			REFERENCES videos(video_id)
			ON DELETE CASCADE,
	
	CONSTRAINT fk_disliked_by_user_id
		FOREIGN KEY(disliked_by_user_id)
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
INSERT INTO dislikes (disliked_video_id, disliked_by_user_id) 
SELECT random_video.video_id, random_user.user_id
FROM random_user CROSS JOIN random_video
LEFT JOIN dislikes ON dislikes.disliked_video_id = random_video.video_id 
AND dislikes.disliked_by_user_id = random_user.user_id
WHERE dislikes.disliked_video_id IS NULL;

SELECT * from dislikes;