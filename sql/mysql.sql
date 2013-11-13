CREATE TABLE IF NOT EXISTS bbs (
    id           INT NOT NULL PRIMARY KEY AUTO_INCREMENT,
    threadid     INT,
    name         VARCHAR(255),
    text      TEXT,
    created_date   datetime,
    modified_date  datetime
) CHARSET=utf8;

-- # dammy data
-- insert into bbs (id, threadid, name, text) values (1, 1, 'Jun','Hello World.');
-- insert into bbs (id, threadid, name, text) values (2, 1, 'Hanako','Hello Jun.');
-- insert into bbs (id, threadid, name, text) values (3, 1, 'Jun','Hi Hanako!');
-- insert into bbs (id, threadid, name, text) values (4, 2, 'Hanako','This is test 1.');
-- insert into bbs (id, threadid, name, text) values (5, 2, 'Hanako','This is test 2.');

