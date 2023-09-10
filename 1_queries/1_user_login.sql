/* get detail about user
  select user id, name, email, password
  select a single user using their email. Use tristanjacobs@gmail.com */

SELECT id, name, email, password
FROM users
WHERE email = 'tristanjacobs@gmail.com';