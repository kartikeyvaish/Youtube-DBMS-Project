-- Script to dislike a comment

INSERT INTO comment_reactions (user_id, comment_id, reaction_type_id)
VALUES (1, 2, 2)
ON CONFLICT (user_id, comment_id)
DO UPDATE
SET reaction_type_id = EXCLUDED.reaction_type_id;