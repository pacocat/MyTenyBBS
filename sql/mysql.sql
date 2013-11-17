CREATE TABLE IF NOT EXISTS threads (
        id       INTEGER PRIMARY KEY AUTO_INCREMENT,
        title    TEXT,
        content  TEXT,
        created_at DATETIME NOT NULL,
        updated_at DATETIME NOT NULL,
        INDEX updated_at(updated_at)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

CREATE TABLE IF NOT EXISTS entries (
        id          VARCHAR(36) PRIMARY KEY,
        thread_id   INTEGER NOT NULL,
        author_name VARCHAR(36),
        content     TEXT,
        created_at  DATETIME NOT NULL,
        updated_at  DATETIME NOT NULL,
        FOREIGN KEY(thread_id) REFERENCES threads(id),
        INDEX created_at(created_at)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;


-- -- # dammy data
-- insert into threads (id, title, content, created_at, updated_at) values (1, 'Thread No.1', 'This is thread #1. Please post anything you like!','2013-01-01 12:59:59','2013-01-01 12:59:59');
-- insert into threads (id, title, content, created_at, updated_at) values (2, 'Thread No.2', 'This is thread #2. Please post anything you like!','2013-01-02 12:59:59','2013-01-01 12:59:59');
-- insert into threads (id, title, content, created_at, updated_at) values (3, 'Thread No.3', 'This is thread #3. Please post anything you like!','2013-01-03 12:59:59','2013-01-01 12:59:59');
-- insert into entries (id, thread_id, author_name, content, created_at, updated_at) values (1, 1, 'Jun', 'Hi guys!','2013-01-01 13:59:59','2013-01-01 13:59:59');
-- insert into entries (id, thread_id, author_name, content, created_at, updated_at) values (2, 2, 'Tom', 'Hi Jun!','2013-01-02 14:59:59','2013-01-02 14:59:59');
-- insert into entries (id, thread_id, author_name, content, created_at, updated_at) values (3, 1, 'Hanako', 'Hi guys','2013-01-01 15:59:59','2013-01-01 15:59:59');
-- insert into entries (id, thread_id, author_name, content, created_at, updated_at) values (4, 2, 'Tom', 'Bye now.','2013-01-02 16:59:59','2013-01-02 16:59:59');
-- insert into entries (id, thread_id, author_name, content, created_at, updated_at) values (5, 3, 'Jun', 'Hi guys','2013-01-03 17:59:59','2013-01-03 17:59:59');
