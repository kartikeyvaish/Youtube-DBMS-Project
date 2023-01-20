CREATE TABLE users (
	user_id bigserial NOT NULL PRIMARY KEY,
	name VARCHAR(50) NOT NULL,
	email VARCHAR(50) NOT NULL UNIQUE, 
    password VARCHAR(255) NOT NULL,
    created_at TIMESTAMP NOT NULL DEFAULT NOW(),
    updated_at TIMESTAMP NOT NULL DEFAULT NOW()
); 

CREATE TABLE channels (
	channel_id bigserial NOT NULL PRIMARY KEY,
	owner_id bigserial NOT NULL,
	channel_name VARCHAR(255) NOT NULL,
    created_at TIMESTAMP NOT NULL DEFAULT NOW(),
    updated_at TIMESTAMP NOT NULL DEFAULT NOW(),
	
	CONSTRAINT fk_owner_id
		FOREIGN KEY(owner_id)
			REFERENCES users(user_id)
			ON DELETE CASCADE
);

CREATE TABLE subscriptions (
	subscription_id bigserial NOT NULL PRIMARY KEY,
	subscribed_channel_id bigserial NOT NULL,
	subscriber_id bigserial NOT NULL,
	
	CONSTRAINT fk_subscribed_channel_id
		FOREIGN KEY(subscribed_channel_id)
			REFERENCES channels(channel_id)
			ON DELETE CASCADE,
	
	CONSTRAINT fk_subscriber_id
		FOREIGN KEY(subscriber_id)
			REFERENCES users(user_id)
			ON DELETE CASCADE
);

CREATE TABLE videos (
	video_id bigserial NOT NULL PRIMARY KEY,
	channel_id bigserial NOT NULL,
	title text NOT NULL,
	description text NOT NULL,
	url text NOT NULL, 
	width numeric DEFAULT 0,
	height numeric DEFAULT 0,
	duration_in_seconds numeric DEFAULT 0,
    created_at TIMESTAMP NOT NULL DEFAULT NOW(),
    updated_at TIMESTAMP NOT NULL DEFAULT NOW(),
	
	CONSTRAINT fk_channel_id
		FOREIGN KEY(channel_id)
			REFERENCES channels(channel_id)
			ON DELETE CASCADE
);

CREATE TABLE video_views (
	video_view_id bigserial NOT NULL PRIMARY KEY,
	viewed_by_user_id bigserial NOT NULL,
	viewed_video_id bigserial NOT NULL,
	watch_time_in_seconds numeric DEFAULT 0,
    created_at TIMESTAMP NOT NULL DEFAULT NOW(),
    updated_at TIMESTAMP NOT NULL DEFAULT NOW(),
	
	CONSTRAINT fk_viewed_by_user_id
		FOREIGN KEY(viewed_by_user_id)
			REFERENCES users(user_id)
			ON DELETE CASCADE,
	
	CONSTRAINT fk_viewed_video_id
		FOREIGN KEY(viewed_video_id)
			REFERENCES videos(video_id)
			ON DELETE CASCADE
);

CREATE TABLE likes (
	like_id bigserial NOT NULL PRIMARY KEY,
	liked_video_id bigserial NOT NULL,
	liked_by_user_id bigserial NOT NULL,
    created_at TIMESTAMP NOT NULL DEFAULT NOW(),
    updated_at TIMESTAMP NOT NULL DEFAULT NOW(),
	
	CONSTRAINT fk_liked_video_id
		FOREIGN KEY(liked_video_id)
			REFERENCES videos(video_id)
			ON DELETE CASCADE,
	
	CONSTRAINT fk_liked_by_user_id
		FOREIGN KEY(liked_by_user_id)
			REFERENCES users(user_id)
			ON DELETE CASCADE
);

CREATE TABLE dislikes (
	dislike_id bigserial NOT NULL PRIMARY KEY,
	disliked_video_id bigserial NOT NULL,
	disliked_by_user_id bigserial NOT NULL,
    created_at TIMESTAMP NOT NULL DEFAULT NOW(),
    updated_at TIMESTAMP NOT NULL DEFAULT NOW(),
	
	CONSTRAINT fk_disliked_video_id
		FOREIGN KEY(disliked_video_id)
			REFERENCES videos(video_id)
			ON DELETE CASCADE,
	
	CONSTRAINT fk_disliked_by_user_id
		FOREIGN KEY(disliked_by_user_id)
			REFERENCES users(user_id)
			ON DELETE CASCADE
);

CREATE TABLE comments (
	comment_id bigserial NOT NULL PRIMARY KEY,
	commented_by_user_id bigserial NOT NULL,
	commented_on_video_id bigserial NOT NULL,
	comment_text text NOT NULL,
    created_at TIMESTAMP NOT NULL DEFAULT NOW(),
    updated_at TIMESTAMP NOT NULL DEFAULT NOW(),
	
	CONSTRAINT fk_commented_by_user_id
		FOREIGN KEY(commented_by_user_id)
			REFERENCES users(user_id)
			ON DELETE CASCADE,
	
	CONSTRAINT fk_commented_on_video_id
		FOREIGN KEY(commented_on_video_id)
			REFERENCES videos(video_id)
			ON DELETE CASCADE
);