-- Script to get liked videos of a user

WITH liked_videos AS (
    SELECT video_id, updated_at AS like_last_updated_at
    FROM video_reactions
    WHERE user_id = 1 AND reaction_type_id = 1
    ORDER BY like_last_updated_at
    LIMIT 10
), liked_video_details AS (
    SELECT * FROM videos
    JOIN liked_videos
    ON liked_videos.video_id = videos.id
    ORDER BY like_last_updated_at
)
SELECT video_id, name AS channel_name, title as video_title, url, duration_in_seconds
FROM channels
JOIN liked_video_details
ON channels.id = liked_video_details.channel_id;