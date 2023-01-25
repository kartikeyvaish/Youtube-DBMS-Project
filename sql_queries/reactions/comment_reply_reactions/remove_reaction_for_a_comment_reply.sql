-- Script to remove like/dislike reaction for a comment

DELETE FROM comment_reply_reactions
WHERE id = 3;
