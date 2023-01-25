# Table Definations

Below are the table definations for the database.
The tables are created in the order they are listed below.

### 1. Users

This table stores users. The `email` column is unique and is stored in lower case.

```sql
CREATE TABLE users (
	id BIGSERIAL NOT NULL PRIMARY KEY,
	name VARCHAR(255) NOT NULL,
	email VARCHAR(255) NOT NULL,
    password VARCHAR(255) NOT NULL,
    created_at TIMESTAMP DEFAULT (NOW() AT TIME ZONE 'UTC'),
    updated_at TIMESTAMP DEFAULT (NOW() AT TIME ZONE 'UTC')
);

CREATE UNIQUE INDEX users_unique_lower_email_index ON users (LOWER(email));
```

### 2. Channels

This table stores channels. The `handle` column is unique.
A user can have mltiple channels.
A user cannot have multiple channels with the same name.
Two users can have channels with the same name but different handles.

```sql
CREATE TABLE channels (
	id BIGSERIAL NOT NULL PRIMARY KEY,
	user_id BIGINT NOT NULL,
	name VARCHAR(255) NOT NULL,
	handle VARCHAR(255) NOT NULL,
	description TEXT DEFAULT NULL,
    created_at TIMESTAMP DEFAULT (NOW() AT TIME ZONE 'UTC'),
    updated_at TIMESTAMP DEFAULT (NOW() AT TIME ZONE 'UTC'),

	CONSTRAINT fk_user_id
		FOREIGN KEY (user_id)
			REFERENCES users (id),

    CONSTRAINT channels_unique_user_id__name_index UNIQUE (user_id, name),
    CONSTRAINT channels_unique_handle_index UNIQUE (handle)
);

CREATE INDEX channels_user_id_index ON channels (user_id);
```

### 3. Subscriptions

This table stores subscriptions. A user can subscribe to multiple channels.
A channel can have multiple subscribers.
A user cannot subscribe to the same channel more than once (unique constraint).

```sql
CREATE TABLE subscriptions (
	id BIGSERIAL NOT NULL PRIMARY KEY,
	channel_id BIGINT NOT NULL,
	user_id BIGINT NOT NULL,
    created_at TIMESTAMP DEFAULT (NOW() AT TIME ZONE 'UTC'),
    updated_at TIMESTAMP DEFAULT (NOW() AT TIME ZONE 'UTC'),

	CONSTRAINT fk_subscribed_channel_id
		FOREIGN KEY (channel_id)
			REFERENCES channels (id),

	CONSTRAINT fk_subscriber_user_id
		FOREIGN KEY (user_id)
			REFERENCES users (id),

    CONSTRAINT subscriptions_unique_channel_id__user_id_index UNIQUE (channel_id, user_id)
);

CREATE INDEX subscriptions_channel_id_index ON subscriptions (channel_id);
CREATE INDEX subscriptions_user_id_index ON subscriptions (user_id);
```

### 4. Videos

This table stores videos. A channel can have multiple videos.
A video can only belong to one channel.

```sql
CREATE TABLE videos (
	id BIGSERIAL NOT NULL PRIMARY KEY,
	channel_id BIGINT NOT NULL,
	title TEXT NOT NULL,
	description TEXT NOT NULL,
	url TEXT NOT NULL,
	width INTEGER NOT NULL,
	height INTEGER NOT NULL,
	duration_in_seconds INTEGER NOT NULL,
    created_at TIMESTAMP DEFAULT (NOW() AT TIME ZONE 'UTC'),
    updated_at TIMESTAMP DEFAULT (NOW() AT TIME ZONE 'UTC'),

	CONSTRAINT fk_video_channel_id
		FOREIGN KEY (channel_id)
			REFERENCES channels (id)
);

CREATE INDEX videos_channel_id_index ON videos (channel_id);
```

### 5. Video Views

This table stores video views. A user can view multiple videos.
A video can have multiple views.
A user can view a video more than once but it only creates one view record (unique constraint)
In that case only the `watch_time_in_seconds` is updated.

```sql
CREATE TABLE video_views (
	id BIGSERIAL NOT NULL PRIMARY KEY,
	user_id BIGINT NOT NULL,
	video_id BIGINT NOT NULL,
	watch_time_in_seconds INTEGER NOT NULL,
    created_at TIMESTAMP DEFAULT (NOW() AT TIME ZONE 'UTC'),
    updated_at TIMESTAMP DEFAULT (NOW() AT TIME ZONE 'UTC'),

	CONSTRAINT fk_video_views_user_id
		FOREIGN KEY (user_id)
			REFERENCES users (id),

	CONSTRAINT fk_video_views_video_id
		FOREIGN KEY (video_id)
			REFERENCES videos (id),

    CONSTRAINT video_views_unique_user_id__video_id_index UNIQUE (user_id, video_id)
);
```

### 6. Reaction Types

This table stores reaction types like `like`, `dislike` as of now.
Maybe in the future we can add more reaction types like `love`, `haha`, `sad`, `angry` etc.

```sql
CREATE TABLE reaction_types (
  id BIGSERIAL NOT NULL PRIMARY KEY,
  name VARCHAR(255) NOT NULL,
  created_at TIMESTAMP DEFAULT (NOW() AT TIME ZONE 'UTC'),
  updated_at TIMESTAMP DEFAULT (NOW() AT TIME ZONE 'UTC')
);
```

### 7. Video Reactions

This table stores video reactions. A user can react to multiple videos.
A video can have multiple reactions.
A user can react to a video more than once but it only creates one reaction record (unique constraint)
In that case only the `reaction_type_id` is updated.

```sql
CREATE TABLE video_reactions (
	id BIGSERIAL PRIMARY KEY NOT NULL,
	user_id BIGINT NOT NULL,
	video_id BIGINT NOT NULL,
	reaction_type_id BIGINT NOT NULL,
	created_at TIMESTAMP DEFAULT (NOW() AT TIME ZONE 'UTC'),
	updated_at TIMESTAMP DEFAULT (NOW() AT TIME ZONE 'UTC'),

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

CREATE INDEX video_reactions_video_id_index ON video_reactions (video_id);
```

### 8. Comments

This table stores comments. A user can comment on multiple videos.
A video can have multiple comments.
A user can comment on a video more than once. It creates a new comment record.
User can edit his/her comment. In that case only the `content` and `is_edited` is updated.

```sql
CREATE TABLE comments (
    id BIGSERIAL NOT NULL PRIMARY KEY,
    video_id BIGINT NOT NULL,
    user_id BIGINT NOT NULL,
    content TEXT NOT NULL,
    is_edited BOOLEAN DEFAULT FALSE,
    created_at TIMESTAMP DEFAULT (NOW() AT TIME ZONE 'UTC'),
    updated_at TIMESTAMP DEFAULT (NOW() AT TIME ZONE 'UTC'),

	CONSTRAINT fk_comments_user_id
		FOREIGN KEY (user_id)
			REFERENCES users (id),

	CONSTRAINT fk_comments_video_id
		FOREIGN KEY (video_id)
			REFERENCES videos (id)
);

CREATE INDEX comments_video_id_index ON comments (video_id);
```

### 9. Comment Reactions

This table stores comment reactions. A user can react to multiple comments.
A comment can have multiple reactions.
A user can react to a comment more than once but it only creates one reaction record (unique constraint)
In that case only the `reaction_type_id` is updated.

```sql
CREATE TABLE comment_reactions (
	id BIGSERIAL PRIMARY KEY NOT NULL,
	user_id BIGINT NOT NULL,
	comment_id BIGINT NOT NULL,
	reaction_type_id BIGINT NOT NULL,
	created_at TIMESTAMP DEFAULT (NOW() AT TIME ZONE 'UTC'),
	updated_at TIMESTAMP DEFAULT (NOW() AT TIME ZONE 'UTC'),

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

CREATE INDEX comments_reactions_comment_id_index ON comment_reactions (comment_id);
```

### 10. Comment Replies

This table stores comment replies. A user can reply to multiple comments.
A comment can have multiple replies.
A user can reply to a comment more than once. It creates a new reply record.
User can edit his/her reply. In that case only the `content` and `is_edited` is updated.

```sql
CREATE TABLE comment_replies (
    id BIGSERIAL NOT NULL PRIMARY KEY,
    user_id BIGINT NOT NULL,
    parent_comment_id BIGINT NOT NULL,
    content TEXT NOT NULL,
    is_edited BOOLEAN DEFAULT FALSE,
    created_at TIMESTAMP DEFAULT (NOW() AT TIME ZONE 'UTC'),
    updated_at TIMESTAMP DEFAULT (NOW() AT TIME ZONE 'UTC'),

	CONSTRAINT fk_comment_replies_user_id
		FOREIGN KEY (user_id)
			REFERENCES users (id),

	CONSTRAINT fk_comment_replies_video_id
		FOREIGN KEY (parent_comment_id)
			REFERENCES comments (id)
);

CREATE INDEX comment_replies_parent_comment_id_index ON comment_replies (parent_comment_id);
```

### 11. Comment Reply Reactions

This table stores comment reply reactions. A user can react to multiple comment replies.
A comment reply can have multiple reactions.
A user can react to a comment reply more than once but it only creates one reaction record (unique constraint)
In that case only the `reaction_type_id` is updated.

```sql
CREATE TABLE comment_reply_reactions (
	id BIGSERIAL PRIMARY KEY NOT NULL,
	user_id BIGINT NOT NULL,
	comment_reply_id BIGINT NOT NULL,
	reaction_type_id BIGINT NOT NULL,
	created_at TIMESTAMP DEFAULT (NOW() AT TIME ZONE 'UTC'),
	updated_at TIMESTAMP DEFAULT (NOW() AT TIME ZONE 'UTC'),

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

CREATE INDEX comments_reply_reactions_comment_id_index ON comment_reply_reactions (comment_reply_id);
```
