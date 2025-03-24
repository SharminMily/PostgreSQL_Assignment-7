-- Create orders Table
CREATE TABLE orders(
    id SERIAL PRIMARY KEY, 
    customer_id INT REFERENCES customers(id),
    book_id INT REFERENCES books(id),
    quantity INT NOT NULL CHECK (quantity > 0),
    order_date TIMESTAMP DEFAULT CURRENT_TIMESTAMP 
)

----Orders Data indertion
INSERT INTO orders (customer_id, book_id, quantity, order_date) VALUES
(1, 2, 1, '2024-03-10'),
(2, 1, 1, '2024-02-20'),
(1, 3, 2, '2024-03-05');


----
SELECT * FROM orders