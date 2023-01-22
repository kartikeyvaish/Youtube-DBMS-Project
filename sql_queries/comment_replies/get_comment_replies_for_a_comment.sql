-- Script to get comment replies for a parent comment

WITH comments_list AS (
    SELECT *
    FROM comment_replies
    WHERE parent_comment_id = 291
    ORDER BY created_at DESC
    LIMIT 10 OFFSET 0
)
SELECT comments_list.id as comment_reply_id, name, content, comments_list.updated_at
FROM users
JOIN comments_list
ON comments_list.user_id = users.id;