-- Script to dislike a video

INSERT INTO video_reactions (user_id, video_id, reaction_type_id)
VALUES (1, 1, 2)
ON CONFLICT (user_id, video_id)
DO UPDATE
SET reaction_type_id = EXCLUDED.reaction_type_id;