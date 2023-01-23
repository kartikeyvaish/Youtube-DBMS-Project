-- Script to get liked videos of a user

WITH liked_videos AS (
    SELECT video_id, updated_at AS like_last_updated_at
    FROM video_reactions
    WHERE user_id = 2 AND reaction_type_id = 1
    ORDER BY like_last_updated_at DESC
    LIMIT 10
), liked_video_details AS (
    SELECT channel_id, videos.id as video_id, url FROM videos
    JOIN liked_videos
    ON liked_videos.video_id = videos.id
    ORDER BY like_last_updated_at DESC
)
SELECT video_id, channel_id, name, description, url
FROM channels
JOIN liked_video_details
ON channels.id = liked_video_details.channel_id;