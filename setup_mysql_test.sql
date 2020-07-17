-- Create Database and grant permission for test

CREATE DATABASE IF NOT EXISTS new_test_db;
GRANT USAGE ON *.*
      TO 'new_test'@'localhost'
      IDENTIFIED BY 'new_test_pwd';
GRANT SELECT ON `performance_schema`.*
      TO 'new_test'@'localhost'
      IDENTIFIED BY 'new_test_pwd';
GRANT ALL PRIVILEGES ON `new_test_db`.*
      TO 'new_test'@'localhost'
      IDENTIFIED BY 'new_test_pwd';
FLUSH PRIVILEGES;
