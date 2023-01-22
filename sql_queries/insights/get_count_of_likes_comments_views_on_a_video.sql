-- Script to get total no. of
--     - likes
--     - dislikes
--     - comments
--     - views
-- for a video

SELECT
    (SELECT COUNT(*) FROM video_reactions WHERE video_id = 1 AND reaction_type_id = 1) AS likes_count,
    (SELECT COUNT(*) FROM video_reactions WHERE video_id = 1 AND reaction_type_id = 2) AS dislikes_count,
    (SELECT COUNT(*) FROM comments WHERE video_id = 1) AS comments_count,
    (SELECT COUNT(*) FROM video_views WHERE video_id = 1 ) AS total_views;