-- Script to comment on a video
-- a user with id = 1005 comments 'Hello' on 
-- a video with video_id = 917

INSERT INTO comments (commented_by_user_id, commented_on_video_id, comment_text)
VALUES (1005, 917, 'Hello World!');

SELECT * FROM comments WHERE commented_on_video_id = 917 ORDER BY comment_id DESC LIMIT 50 OFFSET 0;