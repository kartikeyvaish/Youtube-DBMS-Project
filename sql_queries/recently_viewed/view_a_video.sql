-- Script to view a Video

INSERT INTO video_views (user_id, video_id, watch_time_in_seconds)
VALUES (1, 101, 1545)
ON CONFLICT (user_id, video_id)
DO UPDATE
SET watch_time_in_seconds = EXCLUDED.watch_time_in_seconds;