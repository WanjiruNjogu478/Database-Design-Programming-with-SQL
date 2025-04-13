-- 1. Get all books and their authors
SELECT b.title, CONCAT(a.first_name, ' ', a.last_name) AS author_name
FROM book b
JOIN book_author ba ON b.book_id = ba.book_id
JOIN author a ON ba.author_id = a.author_id;

-- 2. Get customer order details
SELECT co.order_id, c.first_name, c.last_name, os.status_name
FROM cust_order co
JOIN customer c ON co.customer_id = c.customer_id
JOIN order_status os ON co.status_id = os.status_id;

-- 3. Count books per publisher
SELECT p.publisher_name, COUNT(b.book_id) AS total_books
FROM publisher p
JOIN book b ON b.publisher_id = p.publisher_id
GROUP BY p.publisher_name;

-- 4. List all orders with total quantity and total books ordered
SELECT co.order_id, c.first_name, c.last_name,
       COUNT(ol.book_id) AS total_books, SUM(ol.quantity) AS total_quantity
FROM cust_order co
JOIN customer c ON co.customer_id = c.customer_id
JOIN order_line ol ON co.order_id = ol.order_id
GROUP BY co.order_id, c.first_name, c.last_name;

-- 5. Get customer order shipping method details
SELECT co.order_id, c.first_name, c.last_name, sm.method_name
FROM cust_order co
JOIN customer c ON co.customer_id = c.customer_id
JOIN shipping_method sm ON co.method_id = sm.method_id;

-- 6. List all customers with their current address and country
SELECT c.first_name, c.last_name, a.street, a.city, a.postal_code, cn.country_name
FROM customer c
JOIN customer_address ca ON c.customer_id = ca.customer_id
JOIN address a ON ca.address_id = a.address_id
JOIN address_status ast ON a.status_id = ast.status_id  -- Correcting this join
JOIN country cn ON a.country_id = cn.country_id
WHERE ast.status_name = 'current';

-- 7. Get order history for a customer
SELECT oh.order_id, os.status_name, oh.updated_at
FROM order_history oh
JOIN order_status os ON oh.status_id = os.status_id
WHERE oh.order_id = 101; -- Replace with real order_id

-- 8. Top 5 most ordered books
SELECT b.title, SUM(ol.quantity) AS total_ordered
FROM book b
JOIN order_line ol ON b.book_id = ol.book_id
GROUP BY b.title
ORDER BY total_ordered DESC
LIMIT 5;

-- 9. Search for books in a specific language
SELECT b.title, bl.language_name
FROM book b
JOIN book_language bl ON b.language_id = bl.language_id
WHERE bl.language_name = 'English';

-- 10. Total orders and revenue per customer (if you have price info)
SELECT c.first_name, c.last_name, COUNT(co.order_id) AS total_orders,
       SUM(ol.quantity * b.price) AS total_spent
FROM customer c
JOIN cust_order co ON c.customer_id = co.customer_id
JOIN order_line ol ON co.order_id = ol.order_id
JOIN book b ON ol.book_id = b.book_id
GROUP BY c.customer_id;

