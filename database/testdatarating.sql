SELECT FROM rating;

INSERT INTO rating
(id, serviceid, username, rating, comment, date)
VALUES
(1, 1, 'guest', 5, 'nice', TIMESTAMP '2004-10-19 10:23:54'),
(2, 2, 'guest2', 5, 'nice', TIMESTAMP '2004-10-19 10:23:54'),
(4, 4, 'anonymous', 1, 'terrible', TIMESTAMP '2004-10-19 10:23:54'),
(3, 3, 'newbie', 2, 'decent', TIMESTAMP '2004-10-19 10:23:54');