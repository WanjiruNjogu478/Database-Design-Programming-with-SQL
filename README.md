📚 Bookstore Database Project – Group Documentation

👤 Faith Njeri Wanjiru – Database Creator & Documentation Lead

Created all 15 required tables in MySQL (book, author, cust_order, etc.).
Defined all primary and foreign key relationships properly across tables.
Finalized and corrected table schemas and data types.
Set up user accounts and roles in MySQL (admin, staff, customer) with appropriate permissions.
Designed the ERD (Entity Relationship Diagram) using Draw.io.

Wrote sample SQL queries for:
Retrieving books with authors and publishers.
Fetching customer order history.
Viewing shipping statuses and filtering by order status.
Wrote the project documentation, explaining:
Database design structure
Relationships between tables
Purpose of each table
Explanation of queries and logic used
Overview of group responsibilities

👤 Timothy Gona – Data Loader & Query Specialist

Inserted sample data into all the created tables using SQL INSERT statements.
Sample data for books, authors, customers, orders, shipping methods, etc.
Ensured referential integrity across related tables (e.g., book_author, customer_address, etc.).
Tested data correctness by running queries to validate relationships.

Wrote advanced SQL queries to:
Retrieve all books with author and publisher names.
Show a customer’s complete order history.
List books by language.
Analyze top-selling books.
Check shipping methods and order statuses.

👤 Rachael Wanjiru Njogu – User Manager

Created different user accounts in MySQL:
1) admin – Full access to all tables and data.
2) staff – Can view and retrieve order data but cannot delete or insert.
3)customer – Restricted access to their own order details only.
Applied role-based permissions using SQL GRANT and REVOKE.

Implemented basic MySQL security best practices:
No root access sharing
1) Strong passwords
2) Role separation

📌 Project Summary
In this project, we worked as a team to design and implement a relational database for a Bookstore using MySQL.
The database includes key entities like books, authors, customers, addresses, orders, and shipping methods. Our goal was to build a system that stores data efficiently, enforces integrity using relationships, and supports queries that provide business insights.

The database is designed for:
Efficient storage and retrieval
Accurate tracking of customer orders and shipments
Author and book mapping
Multi-address support for customers
Secure access based on user roles

Tools Used:
MySQL – For all database setup and data manipulation.
Draw.io – For creating the ERD diagram.
GitHub – For version control and collaboration.
