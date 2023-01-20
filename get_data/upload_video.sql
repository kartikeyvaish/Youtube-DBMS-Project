-- Script to add videos to a channel
-- user id = 1005
-- channel_id = 1013

INSERT INTO videos (channel_id, title, description, url, width, height, duration_in_seconds)  
VALUES (1013, 'My First Video', 'some description here', 'https://esxamplevideo.mp4', 1920, 1080, 180);

SELECT * from videos WHERE channel_id = 1013 ORDER BY video_id DESC;