-- Script to check if a video is liked/disliked by user

SELECT
    (SELECT EXISTS ( SELECT 1 FROM video_reactions WHERE user_id = 2 AND video_id = 1 AND reaction_type_id = 1 ) AS is_liked),
    (SELECT EXISTS ( SELECT 1 FROM video_reactions WHERE user_id = 2 AND video_id = 1 AND reaction_type_id = 2 ) AS is_disliked);