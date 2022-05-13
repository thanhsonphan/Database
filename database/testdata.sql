START TRANSACTION;

-- Set sequence
SELECT FROM users;

INSERT INTO users
(userid, name, role)
VALUES
(4, 'Admin', 1),
(6, 'son', 2),
(5, 'anh', 1);

COMMIT;