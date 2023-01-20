DROP TABLE IF EXISTS subscriptions;

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

WITH random_user AS (
  SELECT user_id
  FROM users
  ORDER BY RANDOM()
  LIMIT 100
), random_channel AS (
  SELECT channel_id
  FROM channels
  ORDER BY RANDOM()
  LIMIT 800
)
INSERT INTO subscriptions (subscribed_channel_id, subscriber_id) 
SELECT random_channel.channel_id, random_user.user_id
FROM random_user CROSS JOIN random_channel
LEFT JOIN subscriptions ON subscriptions.subscribed_channel_id = random_channel.channel_id 
AND subscriptions.subscriber_id = random_user.user_id
WHERE subscriptions.subscribed_channel_id IS NULL;

SELECT * from subscriptions; 