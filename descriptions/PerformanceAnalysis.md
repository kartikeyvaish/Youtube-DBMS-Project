# Performance Insights

### 1. Subscriptions

Total Rows = 393426

Whether a user has subscribed to a channel or not.

Performs a Index Scan on the `subscriptions` table.
Using (channel_id, user_id) as the index.

![Subscriptions Performance Check](../assets/subscriptions_performance_check.jpg)

### 2. Video Views

Total Rows = 393716

Has a user watched a video or not.

Performs a Index Scan on the `video_views` table.
Using (user_id, video_id) as the index.

![Video Views Performance Check](../assets/video_views_performance_check.jpg)

### 3. Video Reactions

Total Rows = 393261

Has a user reacted to a video or not.

Performs a Index Scan on the `video_reactions` table.
Using (video_id, user_id) as the index.

![Video Reactions Performance Check](../assets/video_reactions_performance_check.jpg)

### 4. Comment Reactions

Total Rows = 470655

Has a user reacted to a comment or not.

Performs a Index Scan on the `comment_reactions` table.
Using (comment_id, user_id) as the index.

![Comment Reactions Performance Check](../assets/comment_reactions_performance_check.jpg)

### 5. Comment Reply Reactions

Total Rows = 470658

Has a user reacted to a comment reply or not.

Performs a Index Scan on the `comment_reply_reactions` table.
Using (comment_reply_id, user_id) as the index.

![Comment Reply Reactions Performance Check](../assets/comment_reply_reactions_performance_check.jpg)
