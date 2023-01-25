# Questions

#### [1. How can a user subscribe to a channel?](../sql_queries/subscriptions/subscribe_to_a_channel.sql)

We need `user_id` of the user who is subscribing and `channel_id` that he/she wants to subscribe.

```sql
INSERT INTO subscriptions (user_id, channel_id)
VALUES (1, 165)
ON CONFLICT (user_id, channel_id)
DO NOTHING;
```

#### [2. How can a user unsubscribe from a channel?](../sql_queries/subscriptions/unsubscribe_to_a_channel.sql)

We need `user_id` of the user who is unsubscribing and `channel_id` that he/she wants to unsubscribe.

```sql
DELETE FROM subscriptions
WHERE user_id = 1 AND channel_id = 165;
```

#### [3. How can a user like a video?](..//sql_queries/reactions/video%20reactions/like_a_video.sql)

We need `user_id` of the user who is liking and `video_id` that he/she wants to like.

```sql
INSERT INTO video_reactions (user_id, video_id, reaction_type_id)
VALUES (1, 1, 1)
ON CONFLICT (user_id, video_id)
DO UPDATE
SET reaction_type_id = EXCLUDED.reaction_type_id;
```

#### [4. How can a user dislike a video?](../sql_queries/reactions/video%20reactions/dislike_a_video.sql)

We need `user_id` of the user who is disliking and `video_id` that he/she wants to dislike.

```sql
INSERT INTO video_reactions (user_id, video_id, reaction_type_id)
VALUES (1, 1, 2)
ON CONFLICT (user_id, video_id)
DO UPDATE
SET reaction_type_id = EXCLUDED.reaction_type_id;
```

#### 5. [How can a user comment on a video?](../sql_queries/comments/add_a_comment.sql)

We need `user_id` of the user who is commenting, `video_id` that he/she wants to comment and `content` that he/she wants to comment.

```sql
INSERT INTO comments (video_id, user_id, content)
VALUES (1, 1, 'Some Comment');
```

#### [6. How can a user create a new channel?](../sql_queries/channels/create_a_channel.sql)

We need `user_id` of the user who is creating a channel and `name` of the channel.

```sql
INSERT INTO channels (user_id, name, handle, description)
VALUES (2, 'Stark Life', 'StarkLife', 'Vlogs');
```

#### [7. How to get recently viewed videos of a user?](../sql_queries/recently_viewed/get_recently_viewed_videos_of_a_user.sql)

We need `user_id` of the user whose recently viewed videos we want to get.

```sql
WITH recently_viewed AS (
    SELECT *
    FROM video_views
    WHERE user_id = 1
    ORDER BY updated_at DESC
    LIMIT 10 OFFSET 0
),
recently_viewed_video_details AS (
    SELECT videos.id AS video_id, channel_id, title, watch_time_in_seconds, duration_in_seconds, url
    FROM videos
    JOIN recently_viewed
    ON videos.id = recently_viewed.video_id
    ORDER BY recently_viewed.updated_at DESC
)
SELECT recently_viewed_video_details.video_id as video_id,
       name AS channel_name, title as video_title,
       watch_time_in_seconds, duration_in_seconds, url
FROM channels
JOIN recently_viewed_video_details
ON channels.id = recently_viewed_video_details.channel_id;
```

#### [8. How to get liked videos by a user?](../sql_queries/reactions/video%20reactions/get_liked_videos_by_a_user.sql)

We need `user_id` of the user whose liked videos we want to get. `reaction_type_id` is 1 for like.

```sql
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
```

#### [9. How to get subscribed channels of a user?](../sql_queries/subscriptions/get_subscribed_chanels_list_for_a_user.sql)

We need `user_id` of the user whose subscribed channels we want to get.

```sql
WITH subscribed_channels AS (
        SELECT channel_id, created_at, id
        FROM subscriptions
        WHERE user_id = 1
        ORDER BY subscriptions.created_at DESC
        LIMIT 10
)
SELECT subscribed_channels.id as subscription_id,
       name as channel_name,
       channels.id as channel_id,
       handle, (SELECT COUNT(*) FROM subscriptions WHERE channel_id = channels.id) AS total_subscribers,
       subscribed_channels.created_at,
       description
FROM channels
JOIN subscribed_channels
ON channels.id  = subscribed_channels.channel_id
ORDER BY subscribed_channels.created_at DESC;
```

#### [10. How will you get subscribers list of a channel?](../sql_queries/subscriptions/get_subscribers_for_a_channel.sql)

```sql
WITH subscribed_users AS (
	SELECT subscriptions.user_id, subscriptions.created_at
	FROM subscriptions
	JOIN channels ON subscriptions.channel_id = channels.id
	WHERE channels.id = 165
    ORDER BY subscriptions.created_at DESC
	LIMIT 10
)
SELECT id, name
FROM users
JOIN subscribed_users
ON subscribed_users.user_id = users.id
ORDER BY subscribed_users.created_at DESC;
```

#### [11. How will you get list of videos uploaded by a channel?](../sql_queries/insights/get_list_of_videos_on_a_channel.sql)

```sql
WITH videos_list AS (
    SELECT id as video_id, title as video_title, description as video_description, url, duration_in_seconds
    FROM videos
    WHERE channel_id = 460
    ORDER BY created_at DESC
)
SELECT * FROM videos_list;
```

#### [12. How will you get list of videos uploaded by a user (maybe on multiple channels)?](../sql_queries/insights/get_list_of_videos_uploaded_by_a_user.sql)

```sql
WITH users_channels AS (
    SELECT id as channel_id, name as channel_name
    FROM channels
    WHERE user_id = 2
),
videos_list AS (
    SELECT id as video_id, title as video_title, description as video_description, url, duration_in_seconds
    FROM videos
    WHERE channel_id IN (SELECT channel_id FROM users_channels)
    ORDER BY created_at DESC
)
SELECT * FROM videos_list;
```

#### [13. How will you get likes, dislikes and comments count of a video?](../sql_queries/insights/get_count_of_likes_comments_views_on_a_video.sql)

```sql
SELECT
    (SELECT COUNT(*) FROM video_reactions WHERE video_id = 1 AND reaction_type_id = 1) AS likes_count,
    (SELECT COUNT(*) FROM video_reactions WHERE video_id = 1 AND reaction_type_id = 2) AS dislikes_count,
    (SELECT COUNT(*) FROM comments WHERE video_id = 1) AS comments_count,
    (SELECT COUNT(*) FROM video_views WHERE video_id = 1 ) AS total_views;
```

#### [14. How will you get percentage of views by subscriber or non-subscriber.](../sql_queries/insights/get_sub_unsub_percentage_for_a_video.sql)

```sql
WITH viewed_users_ids AS (
    SELECT user_id, video_id FROM video_views WHERE video_id = 1
),
video_details AS (
    SELECT id as channel_id FROM channels WHERE id = (SELECT video_id FROM viewed_users_ids LIMIT 1)
),
subscribed_users AS (
    SELECT * FROM subscriptions
    JOIN viewed_users_ids
    ON subscriptions.user_id = viewed_users_ids.user_id
    WHERE subscriptions.channel_id = (SELECT channel_id FROM video_details)
),
counts AS (
    SELECT
        (SELECT COUNT(*) FROM viewed_users_ids) as total_views,
        (SELECT COUNT(*) FROM subscribed_users) as total_subscribed_users
)
SELECT
    ROUND((total_subscribed_users * 100.0) / total_views, 2) as subscribed_users_percentage,
    ROUND(((total_views - total_subscribed_users) * 100.0) / total_views, 2) as non_subscribed_users_percentage
FROM counts;
```

#### [15. How will you get total watch hours by a user on the platform?](../sql_queries/durations/total_watch_hours_for_a_user.sql)

Suppose, a user has viewed 3 videos till now.

- Video 1 -> for 1 hour
- Video 2 -> for 30 minutes
- Video 3 -> for 30 seconds

Total watch hour for that user on the plarform = 1:30:30

```sql
SELECT
    COUNT(*) AS total_videos_watched,
    ROUND(SUM(watch_time_in_seconds) / 3600.0, 2) AS total_watch_hours
FROM video_views
WHERE user_id = 2;
```

#### [16. How will you get total hours of all his uploaded videos?](../sql_queries/durations/total_duration_of_videos_uploaded_by_a_user.sql)

```sql
WITH users_channels AS (
    SELECT id
    FROM channels
    WHERE user_id = 62
),
video_duration_list AS (
    SELECT duration_in_seconds
    FROM videos
    JOIN users_channels
    ON videos.channel_id = users_channels.id
)
SELECT ROUND(SUM(duration_in_seconds) / 3600.0, 2) AS total_hours FROM video_duration_list;
```
