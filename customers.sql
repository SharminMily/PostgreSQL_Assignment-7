--  Create  customers table
CREATe TABLE customers (
    id SERIAL PRIMARY KEY,
    name VARCHAR(100) NOT NULL,
    email VARCHAR(100) NOT NULL UNIQUE,
    joined_date DATE DEFAULT CURRENT_DATE  
)

-- customers Data indertion
INSERT INTO customers (name, email, joined_date) VALUES
('Alice', 'alice@email.com', '2023-01-10'),
('Bob', 'bob@email.com ', '2022-05-15'),
('Charlie', 'charlie@email.com', '2023-06-20');


--
SELECT * FROM customers