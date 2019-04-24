CREATE TABLE `hibernate_sequence`
(
    `next_val` bigint(20)
) ENGINE = InnoDB
  DEFAULT CHARSET = utf8;

INSERT INTO hibernate_sequence(next_val)
VALUES (1000);

CREATE TABLE `users`
(
    id       BIGINT(20) NOT NULL,
    username VARCHAR(255),
    password VARCHAR(255),
    PRIMARY KEY (id)
) ENGINE = InnoDB
  DEFAULT CHARSET = utf8;