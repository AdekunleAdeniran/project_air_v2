-- Create Database and grant permission to User

CREATE DATABASE IF NOT EXISTS new_dev_db;
GRANT USAGE ON * . *
      TO 'new_dev'@'localhost'
      IDENTIFIED BY 'new_dev_pwd';
GRANT ALL PRIVILEGES ON `new_dev_db`.*
      TO 'new_dev'@'localhost'
      IDENTIFIED BY 'new_dev_pwd';
GRANT SELECT ON `performance_schema`.*
      TO 'new_dev'@'localhost'
      IDENTIFIED BY 'new_dev_pwd';
FLUSH PRIVILEGES;
