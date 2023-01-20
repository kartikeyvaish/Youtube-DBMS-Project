-- script to insert a new user

DELETE FROM users WHERE user_id > 1000;

INSERT INTO users (name, email, password)
VALUES ('Witcher Stark', 'witcherstark@gmail.com', '$2a$10$sFrv7zVxmv.pVxtmjnlzz.ZOMYOpFR6oNWS6M52/dPbltzNynJ94G');

SELECT * from users ORDER BY user_id DESC;