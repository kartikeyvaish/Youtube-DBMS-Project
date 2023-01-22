CREATE TRIGGER users_update_trigger
    BEFORE UPDATE
    ON users
    FOR EACH ROW
EXECUTE PROCEDURE set_updated_at_timestamp();

CREATE TRIGGER channels_update_trigger
    BEFORE UPDATE
    ON channels
    FOR EACH ROW
EXECUTE PROCEDURE set_updated_at_timestamp();

CREATE TRIGGER subscriptions_update_trigger
    BEFORE UPDATE
    ON subscriptions
    FOR EACH ROW
EXECUTE PROCEDURE set_updated_at_timestamp();

CREATE TRIGGER videos_update_trigger
    BEFORE UPDATE
    ON videos
    FOR EACH ROW
EXECUTE PROCEDURE set_updated_at_timestamp();

CREATE TRIGGER video_views_update_trigger
    BEFORE UPDATE
    ON video_views
    FOR EACH ROW
EXECUTE PROCEDURE set_updated_at_timestamp();

CREATE TRIGGER video_reactions_update_trigger
BEFORE UPDATE
ON video_reactions
FOR EACH ROW
EXECUTE PROCEDURE set_updated_at_timestamp();

CREATE TRIGGER reaction_types_update_trigger
    BEFORE UPDATE
    ON reaction_types
    FOR EACH ROW
EXECUTE PROCEDURE set_updated_at_timestamp();

CREATE TRIGGER comments_update_trigger
    BEFORE UPDATE
    ON comments
    FOR EACH ROW
EXECUTE PROCEDURE set_updated_fields_for_comments();

CREATE TRIGGER comment_reactions_update_trigger
    BEFORE UPDATE
    ON comment_reactions
    FOR EACH ROW
EXECUTE PROCEDURE set_updated_at_timestamp();

CREATE TRIGGER comment_replies_update_trigger
    BEFORE UPDATE
    ON comment_replies
    FOR EACH ROW
EXECUTE PROCEDURE set_updated_fields_for_comments();

CREATE TRIGGER comment_reply_reactions_update_trigger
    BEFORE UPDATE
    ON comment_reply_reactions
    FOR EACH ROW
EXECUTE PROCEDURE set_updated_at_timestamp();