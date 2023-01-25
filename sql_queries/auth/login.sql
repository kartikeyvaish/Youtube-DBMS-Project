-- Script to login

WITH account_info AS (
  SELECT id, name, email, password
  FROM users
  WHERE LOWER(email) = LOWER('kartikeyvaish99@gmail.com')
)
SELECT
  CASE
    WHEN NOT EXISTS (SELECT 1 FROM account_info) THEN
        'No Account exist for the email'
    WHEN (SELECT password FROM account_info) != '$2a$10$sFrv7zVxmv.pVxtmjnlzz.ZOMYOpFR6oNWS6M52/dPbltzNynJ94B' THEN
        'Incorrect Password'
    ELSE
        'Logged In Successfully'
  END
AS login_response