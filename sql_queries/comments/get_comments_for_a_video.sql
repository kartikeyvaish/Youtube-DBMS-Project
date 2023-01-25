-- Script to get comments on a video

WITH comments_list AS (
    SELECT *
    FROM comments
    WHERE video_id = 2
    ORDER BY created_at DESC
    LIMIT 10 OFFSET 0
)
SELECT comments_list.id as comment_id, name, comments_list.content,
       (SELECT count(*) FROM comment_replies WHERE parent_comment_id = comments_list.id) as reply_count,
       comments_list.created_at
FROM users
JOIN comments_list
ON comments_list.user_id = users.id