-- Active: 1742726971680@@localhost@5432@bookstore_db

---- Create books Table
CREATe TABLE books (
    id SERIAL PRIMARY KEY,
    title VARCHAR(100) NOT NULL,
    author VARCHAR(100) NOT NULL,
    price NUMERIC(10, 2)  NOT NULL CHECK (price >= 0),
    stock INT NOT NULL CHECK (stock >= 0),
    published_year INT NOT NULL 
)

----  books Data indertion

INSERT INTO books (title, author, price, stock, published_year) VALUES
('The Alchemist', 'Paulo Coelho', 9.99, 120, 1988),
('To Kill a Mockingbird', 'Harper Lee', 12.50, 80, 1960),
('1984', 'George Orwell', 15.00, 200, 1949),
('Pride and Prejudice', 'Jane Austen', 8.99, 60, 1813),
('The Great Gatsby', 'F. Scott Fitzgerald', 10.99, 150, 1925),
('The Catcher in the Rye', 'J.D. Salinger', 11.49, 90, 1951),
('Harry Potter and the Sorcerer''s Stone', 'J.K. Rowling', 20.00, 300, 1997),
('The Hobbit', 'J.R.R. Tolkien', 14.50, 180, 1937),
('The Fault in Our Stars', 'John Green', 9.75, 100, 2012),
('Inferno', 'Dan Brown', 13.99, 110, 2013),
('The Da Vinci Code', 'Dan Brown', 15.50, 140, 2003),
('A Game of Thrones', 'George R.R. Martin', 22.99, 130, 1996),
('The Road', 'Cormac McCarthy', 10.00, 70, 2006),
('Life of Pi', 'Yann Martel', 12.99, 95, 2001),
('The Kite Runner', 'Khaled Hosseini', 11.99, 105, 2003);


-- UPDATE books
--   SET price = 500
--   WHERE title = 'The Hobbit'


-- Retrieve the most expensive book in the store.

SELECT * FROM books
WHERE price = (SELECT MAX(price) FROM books)


-----Data Read
SELECT * FROM books