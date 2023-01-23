-- Script to get comment replies for a parent comment

WITH comment_reply_list AS (
    SELECT *
    FROM comment_replies
    WHERE parent_comment_id = 4086
    ORDER BY created_at DESC
    LIMIT 10 OFFSET 0
)
SELECT comment_reply_list.id as comment_reply_id, is_edited, name, content,
       comment_reply_list.updated_at,
       (
        SELECT COUNT(*) FROM comment_reply_reactions
        WHERE comment_reply_id = comment_reply_list.id AND reaction_type_id = 1
       ) as likes_count,
       (
        SELECT COUNT(*) FROM comment_reply_reactions
        WHERE comment_reply_id = comment_reply_list.id AND reaction_type_id = 2
       ) as dislikes_count
FROM users
JOIN comment_reply_list
ON comment_reply_list.user_id = users.id;