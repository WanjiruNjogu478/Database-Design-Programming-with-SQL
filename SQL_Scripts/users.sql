-- Admin user
CREATE USER 'admin_user'@'localhost' IDENTIFIED BY 'Admin@123';
GRANT ALL PRIVILEGES ON bookstore.* TO 'admin_user'@'localhost';

-- Analyst user
CREATE USER 'analyst_user'@'localhost' IDENTIFIED BY 'Analyst@123';
GRANT SELECT ON bookstore.* TO 'analyst_user'@'localhost';

-- Data Entry user
CREATE USER 'entry_user'@'localhost' IDENTIFIED BY 'Entry@123';
GRANT INSERT, UPDATE ON bookstore.* TO 'entry_user'@'localhost';
