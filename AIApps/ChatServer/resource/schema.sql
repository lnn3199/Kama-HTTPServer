-- 在 ChatHttpServer 库中执行（注册/登录依赖 users；聊天依赖 chat_message）
-- 用法: mysql -u httpserver -p -h 127.0.0.1 ChatHttpServer < schema.sql

USE ChatHttpServer;

CREATE TABLE IF NOT EXISTS users (
  id INT AUTO_INCREMENT PRIMARY KEY,
  username VARCHAR(255) NOT NULL UNIQUE,
  password VARCHAR(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- id 列存的是用户 id（与业务里 INSERT 一致）；无单列主键时用联合索引
CREATE TABLE IF NOT EXISTS chat_message (
  id BIGINT NOT NULL COMMENT 'user id',
  username VARCHAR(255) NOT NULL,
  session_id VARCHAR(255) NOT NULL,
  is_user INT NOT NULL,
  content MEDIUMTEXT,
  ts BIGINT NOT NULL,
  KEY idx_user_ts (id, ts)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
