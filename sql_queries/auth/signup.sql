-- script to signup

WITH account_info AS (
  SELECT id
  FROM users
  WHERE LOWER(email) = LOWER('proxima@gmail.com')
),
email_check_response AS (
    SELECT
      CASE
        WHEN NOT EXISTS (SELECT 1 FROM account_info) THEN
            1
        ELSE
            0
      END
    AS email_check_response
)
INSERT INTO users (name, email, password)
SELECT'Proxima Singh', 'proxima@gmail.com', '$2a$10$sFrv7zVxmv.pVxtmjnlzz.ZOMYOpFR6oNWS6M52/dPbltzNynJ94G'
WHERE NOT EXISTS (
    SELECT 1 FROM email_check_response WHERE email_check_response = 0
);

SELECT * FROM users WHERE email = 'proxima@gmail.com';