-- Active: 1747418280166@@localhost@5432@conceptual_one
CREATE DATABASE conceptual_one

CREATE TABLE publishers (
  id SERIAL PRIMARY KEY,
  name TEXT NOT NULL
);

CREATE TABLE books(
  id SERIAL PRIMARY KEY,
  title TEXT NOT NULL,
  author_name TEXT,
  published_year INT,
  price NUMERIC(6,2),
  in_stock BOOLEAN,
  publisher_id INT,
  FOREIGN KEY (publisher_id) REFERENCES publishers(id)
);

INSERT INTO publishers (name)
 VALUES 
('Penguin Books'),
('HarperCollins'),
('Bloomsbury'),
('Oxford University Press');

SELECT * FROM publishers;

INSERT INTO books (title, author_name, published_year, price, in_stock, publisher_id)
 VALUES
('The Hobbit', 'J.R.R. Tolkien', 1937, 250.00, true, 1),
('Harry Potter and the Philosophers Stone', 'J.K. Rowling', 1997, 300.00, true, 3),
('To Kill a Mockingbird', 'Harper Lee', 1960, 180.00, false, 2),
('1984', 'George Orwell', 1949, 220.00, true, 1),
('Animal Farm', 'George Orwell', 1945, 150.00, true, 4),
('The Great Gatsby', 'F. Scott Fitzgerald', 1925, 200.00, false, 1),
('Brave New World', 'Aldous Huxley', 1932, 230.00, true, NULL); -- No publisher

SELECT * FROM publishers