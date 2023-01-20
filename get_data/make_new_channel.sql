-- Script to create a channel
-- user id = 90
INSERT INTO channels (owner_id, channel_name)
VALUES (90, 'My channel!!');
SELECT *
from channels
WHERE owner_id = 90
ORDER BY channel_id DESC;