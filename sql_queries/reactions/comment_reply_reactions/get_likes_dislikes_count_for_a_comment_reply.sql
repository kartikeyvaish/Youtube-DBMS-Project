SELECT
    SUM ( CASE WHEN reaction_type_id = 1 THEN 1 ELSE 0 END ) as likes_count,
    SUM ( CASE WHEN reaction_type_id = 2 THEN 1 ELSE 0 END ) as dislikes_count
FROM comment_reply_reactions
WHERE comment_reply_id = 2;