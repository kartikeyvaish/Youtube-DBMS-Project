CREATE TABLE users (
	id BIGSERIAL NOT NULL PRIMARY KEY,
	name VARCHAR(255) NOT NULL,
	email VARCHAR(255) NOT NULL,
    password VARCHAR(255) NOT NULL,
    created_at TIMESTAMP WITH TIME ZONE NOT NULL DEFAULT NOW(),
    updated_at TIMESTAMP WITH TIME ZONE NOT NULL DEFAULT NOW()
);

CREATE TABLE channels (
	id BIGSERIAL NOT NULL PRIMARY KEY,
	user_id BIGINT NOT NULL,
	name VARCHAR(255) NOT NULL,
	handle VARCHAR(255) NOT NULL,
	description TEXT DEFAULT NULL,
    created_at TIMESTAMP WITH TIME ZONE NOT NULL DEFAULT NOW(),
    updated_at TIMESTAMP WITH TIME ZONE NOT NULL DEFAULT NOW(),

	CONSTRAINT fk_user_id
		FOREIGN KEY (user_id)
			REFERENCES users (id),

    CONSTRAINT channels_unique_user_id__name_index UNIQUE (user_id, name),
    CONSTRAINT channels_unique_handle_index UNIQUE (handle)
);

CREATE TABLE subscriptions (
	id BIGSERIAL NOT NULL PRIMARY KEY,
	channel_id BIGINT NOT NULL,
	user_id BIGINT NOT NULL,
    created_at TIMESTAMP WITH TIME ZONE NOT NULL DEFAULT NOW(),
    updated_at TIMESTAMP WITH TIME ZONE NOT NULL DEFAULT NOW(),

	CONSTRAINT fk_subscribed_channel_id
		FOREIGN KEY (channel_id)
			REFERENCES channels (id),

	CONSTRAINT fk_subscriber_user_id
		FOREIGN KEY (user_id)
			REFERENCES users (id),

    CONSTRAINT subscriptions_unique_channel_id__user_id_index UNIQUE (channel_id, user_id)
);

CREATE TABLE videos (
	id BIGSERIAL NOT NULL PRIMARY KEY,
	channel_id BIGINT NOT NULL,
	title text NOT NULL,
	description text NOT NULL,
	url text NOT NULL,
	width INTEGER NOT NULL,
	height INTEGER NOT NULL,
	duration_in_seconds INTEGER NOT NULL,
    created_at TIMESTAMP WITH TIME ZONE NOT NULL DEFAULT NOW(),
    updated_at TIMESTAMP WITH TIME ZONE NOT NULL DEFAULT NOW(),

	CONSTRAINT fk_video_channel_id
		FOREIGN KEY (channel_id)
			REFERENCES channels (id)
);

CREATE TABLE video_views (
	id BIGSERIAL NOT NULL PRIMARY KEY,
	user_id BIGINT NOT NULL,
	video_id BIGINT NOT NULL,
	watch_time_in_seconds INTEGER NOT NULL,
    created_at TIMESTAMP WITH TIME ZONE NOT NULL DEFAULT NOW(),
    updated_at TIMESTAMP WITH TIME ZONE NOT NULL DEFAULT NOW(),

	CONSTRAINT fk_video_views_user_id
		FOREIGN KEY (user_id)
			REFERENCES users (id),

	CONSTRAINT fk_video_views_video_id
		FOREIGN KEY (video_id)
			REFERENCES videos (id),

    CONSTRAINT video_views_unique_user_id__video_id_index UNIQUE (user_id, video_id)
);

CREATE TABLE reaction_types (
  id BIGSERIAL NOT NULL PRIMARY KEY,
  name VARCHAR(255) NOT NULL,
  created_at TIMESTAMP WITH TIME ZONE NOT NULL DEFAULT NOW(),
  updated_at TIMESTAMP WITH TIME ZONE NOT NULL DEFAULT NOW()
);

CREATE TABLE video_reactions (
	id BIGSERIAL PRIMARY KEY NOT NULL,
	user_id BIGINT NOT NULL,
	video_id BIGINT NOT NULL,
	reaction_type_id BIGINT NOT NULL,
	created_at TIMESTAMP WITH TIME ZONE NOT NULL DEFAULT NOW(),
	updated_at TIMESTAMP WITH TIME ZONE NOT NULL DEFAULT NOW(),

	CONSTRAINT fk_video_reactions_user_id
	    FOREIGN KEY (user_id)
	        REFERENCES users (id),

	CONSTRAINT fk_video_reactions_video_id
	    FOREIGN KEY (video_id)
	        REFERENCES videos (id),

	CONSTRAINT fk_video_reactions_type_id
	    FOREIGN KEY (reaction_type_id)
	        REFERENCES reaction_types (id),

	CONSTRAINT video_reactions_unique_video_id__user_id_index UNIQUE (video_id, user_id)
);

CREATE TABLE comments (
    id BIGSERIAL NOT NULL PRIMARY KEY,
    video_id BIGINT NOT NULL,
    user_id BIGINT NOT NULL,
    content TEXT NOT NULL,
    is_edited BOOLEAN DEFAULT false,
    created_at TIMESTAMP WITH TIME ZONE NOT NULL DEFAULT NOW(),
    updated_at TIMESTAMP WITH TIME ZONE NOT NULL DEFAULT NOW(),

	CONSTRAINT fk_comments_user_id
		FOREIGN KEY (user_id)
			REFERENCES users (id),

	CONSTRAINT fk_comments_video_id
		FOREIGN KEY (video_id)
			REFERENCES videos (id)
);

CREATE TABLE comment_reactions (
	id BIGSERIAL PRIMARY KEY NOT NULL,
	user_id BIGINT NOT NULL,
	comment_id BIGINT NOT NULL,
	reaction_type_id BIGINT NOT NULL,
	created_at TIMESTAMP WITH TIME ZONE NOT NULL DEFAULT NOW(),
	updated_at TIMESTAMP WITH TIME ZONE NOT NULL DEFAULT NOW(),

	CONSTRAINT fk_comment_reactions_user_id
	    FOREIGN KEY (user_id)
	        REFERENCES users (id),

	CONSTRAINT fk_comment_reactions_comment_id
	    FOREIGN KEY (comment_id)
	        REFERENCES comments (id),

	CONSTRAINT fk_comment_reactions_type_id
	    FOREIGN KEY (reaction_type_id)
	        REFERENCES reaction_types (id),

	CONSTRAINT comment_reactions_unique_comment_id__user_id_index UNIQUE (comment_id, user_id)
);

CREATE TABLE comment_replies (
    id BIGSERIAL NOT NULL PRIMARY KEY,
    user_id BIGINT NOT NULL,
    parent_comment_id BIGINT NOT NULL,
    content TEXT NOT NULL,
    is_edited BOOLEAN DEFAULT false,
    created_at TIMESTAMP WITH TIME ZONE NOT NULL DEFAULT NOW(),
    updated_at TIMESTAMP WITH TIME ZONE NOT NULL DEFAULT NOW(),

	CONSTRAINT fk_comment_replies_user_id
		FOREIGN KEY (user_id)
			REFERENCES users (id),

	CONSTRAINT fk_comment_replies_video_id
		FOREIGN KEY (parent_comment_id)
			REFERENCES comments (id)
);

CREATE TABLE comment_reply_reactions (
	id BIGSERIAL PRIMARY KEY NOT NULL,
	user_id BIGINT NOT NULL,
	comment_reply_id BIGINT NOT NULL,
	reaction_type_id BIGINT NOT NULL,
	created_at TIMESTAMP WITH TIME ZONE NOT NULL DEFAULT NOW(),
	updated_at TIMESTAMP WITH TIME ZONE NOT NULL DEFAULT NOW(),

	CONSTRAINT fk_comment_reply_reactions_user_id
	    FOREIGN KEY (user_id)
	        REFERENCES users (id),

	CONSTRAINT fk_comment_reply_reactions_comment_reply_id
	    FOREIGN KEY (comment_reply_id)
	        REFERENCES comment_replies (id),

	CONSTRAINT fk_comment_reply_reactions_type_id
	    FOREIGN KEY (reaction_type_id)
	        REFERENCES reaction_types (id),

	CONSTRAINT comment_reply_reactions_unique_comment_reply_id__user_id_index UNIQUE (comment_reply_id, user_id)
);