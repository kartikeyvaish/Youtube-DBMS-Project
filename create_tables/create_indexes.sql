-- Users Table
CREATE UNIQUE INDEX users_unique_lower_email_index ON users (LOWER(email));

-- Channels Table
CREATE INDEX channels_user_id_index ON channels (user_id);
CREATE INDEX channels_name_index ON channels (name);

-- Subscriptions Table
CREATE INDEX subscriptions_channel_id_index ON subscriptions (channel_id);
CREATE INDEX subscriptions_user_id_index ON subscriptions (user_id);

-- Videos table
CREATE INDEX videos_channel_id_index ON videos (channel_id);
CREATE INDEX videos_title_index ON videos (title);

-- Video Reactions table
CREATE INDEX video_reactions_video_id_index ON video_reactions (video_id);

-- Comments table
CREATE INDEX comments_video_id_index ON comments (video_id);

-- Comments Reactions Table
CREATE INDEX comments_reactions_comment_id_index ON comment_reactions (comment_id);

-- Comments Reply table
CREATE INDEX comment_replies_parent_comment_id_index ON comment_replies (parent_comment_id);

-- Comments Reply Reactions Table
CREATE INDEX comments_reply_reactions_comment_id_index ON comment_reply_reactions (comment_reply_id);