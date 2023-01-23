DROP TRIGGER IF EXISTS users_update_trigger ON users CASCADE;
DROP TRIGGER IF EXISTS channels_update_trigger ON channels CASCADE;
DROP TRIGGER IF EXISTS subscriptions_update_trigger ON subscriptions CASCADE;
DROP TRIGGER IF EXISTS videos_update_trigger ON videos CASCADE;
DROP TRIGGER IF EXISTS video_views_update_trigger ON video_views CASCADE;
DROP TRIGGER IF EXISTS video_reactions_update_trigger ON video_reactions CASCADE;
DROP TRIGGER IF EXISTS reaction_types_update_trigger ON reaction_types CASCADE;
DROP TRIGGER IF EXISTS comments_update_trigger ON comments CASCADE;
DROP TRIGGER IF EXISTS comment_reactions_update_trigger ON comment_reactions CASCADE;
DROP TRIGGER IF EXISTS comment_replies_update_trigger ON comments CASCADE;

DROP FUNCTION IF EXISTS set_updated_at_timestamp() CASCADE;
DROP FUNCTION IF EXISTS set_updated_fields_for_comments() CASCADE;

DROP TABLE IF EXISTS users, channels, comments, reaction_types, subscriptions,
                     video_views, videos, comment_reactions, comment_replies,
                     comment_reply_reactions, video_reactions;