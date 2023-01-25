-- Script to get whether a particular user has liked/disliked the comment reply or not

SELECT
    (SELECT EXISTS ( SELECT 1 FROM comment_reply_reactions WHERE user_id = 1 AND comment_reply_id = 2 AND reaction_type_id = 1 ) AS is_liked),
    (SELECT EXISTS ( SELECT 1 FROM comment_reply_reactions WHERE user_id = 1 AND comment_reply_id = 2 AND reaction_type_id = 2 ) AS is_disliked);