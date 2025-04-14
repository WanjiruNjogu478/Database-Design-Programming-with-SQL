CREATE USER 'admin'@'localhost' IDENTIFIED BY 'StrongAdminPass!';
GRANT ALL PRIVILEGES ON bookstore.* TO 'admin'@'localhost';

CREATE USER 'staff'@'localhost' IDENTIFIED BY 'StaffSecurePass!';
GRANT SELECT ON bookstore.cust_order TO 'staff'@'localhost';
GRANT SELECT ON bookstore.order_line TO 'staff'@'localhost';
GRANT SELECT ON bookstore.order_status TO 'staff'@'localhost';

CREATE USER 'customer'@'localhost' IDENTIFIED BY 'CustomerPass123!';
GRANT SELECT ON bookstore.cust_order TO 'customer'@'localhost';

REVOKE INSERT, DELETE ON bookstore.cust_order FROM 'staff'@'localhost';

FLUSH PRIVILEGES;
