 --- Problems & Sample - 1
 -- Find books that are out of stock.
 SELECT title FROM books
   WHERE stock = 0 


 --- Problems & Sample - 2 
-- Retrieve the most expensive book in the store.
SELECT * FROM books
   WHERE price = (SELECT MAX(price) FROM books)


 --- Problems & Sample - 3 
--Find the total number of orders placed by each customer.
SELECT c.id AS customer_id, c.name, o.total_orders
   FROM customers c 
   JOIN (
    SELECT customer_id , COUNT(*) as total_orders
    FRom orders
    GRoup BY customer_id 
   )o ON c.id = o.customer_id;


--- Problems & Sample - 4 
--Calculate the total revenue generated from book sales. 
SELECT SUM(b.price * o.quantity) AS total_revenue
   FROM books b
   JOIN orders o ON b.id = o.book_id;


--- Problems & Sample - 5 
-- List all customers who have placed more than one order.
SELECT  c.name, COUNT(o.id) AS orders_count
  FROM customers c
  JOIN orders o ON c.id = o.customer_id 
  GROUP BY c.name
  HAVING COUNT(o.id) > 1;


--- Problems & Sample - 6 
-- Find the average price of books in the store.
SELECT ROUND(AVG(price), 2) AS avg_book_price
  FROM books;


--- Problems & Sample - 7 
-- Increase the price of all books published before 2000 by 10%.
UPDATE books
   SET price = price * 1.10
   WHERE published_year < 2000;


--- Problems & Sample - 8 
-- Delete customers who haven't placed any orders.
DELETE FROM customers
WHERE id NOT IN (SELECT DISTINCT customer_id FROM orders);

