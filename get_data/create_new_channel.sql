-- Script to create a channel
-- user id = 1005, channel_name = 'Witcher Stark'

DELETE FROM channels WHERE channel_id > 1000;

INSERT INTO channels (owner_id, channel_name)
VALUES (1005, 'Stark Life');

SELECT * FROM channels WHERE owner_id = 1005 ORDER BY channel_id DESC;