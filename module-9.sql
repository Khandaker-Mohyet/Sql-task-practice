CREATE TABLE departments (
    id SERIAL PRIMARY KEY,
    name VARCHAR(50) NOT NULL
);

CREATE TABLE courses (
    id SERIAL PRIMARY KEY,
    title VARCHAR(100) NOT NULL
);

CREATE TABLE students (
    id SERIAL PRIMARY KEY,
    name VARCHAR(100) NOT NULL,
    department_id INT REFERENCES departments(id),
    last_login DATE
);

DROP TABLE students

-- Insert into departments
INSERT INTO departments (name) VALUES
('CSE'),
('EEE'),
('ME');

-- Insert into courses
INSERT INTO courses (title) VALUES
('Data Structures'),
('Circuit Analysis'),
('Thermodynamics'),
('Operating Systems'),
('Microprocessors and Systems');

-- Insert into students
INSERT INTO students (name, department_id, last_login) VALUES
('Alice Johnson', 1, '2025-05-20'),
('Bob Smith', 2, '2025-04-18'),
('Clara Lee', 1, '2025-05-21'),
('Daniel Brown', 3, '2025-06-19'),
('Eva Green', 2, '2025-05-17');

SELECT * FROM courses;
SELECT * FROM students;
SELECT * FROM departments;

-- Retrieve students who have logged in within the last 30 days.

SELECT * FROM students
WHERE last_login >= CURRENT_DATE - INTERVAL '30 days';

-- Extract the login month from the last_login and group students by month.
SELECT
    TO_CHAR(last_login, 'YYYY-MM') AS login_month,
    COUNT(*)
FROM students
GROUP BY login_month;
SELECT
    TO_CHAR(last_login, 'YYYY-MM') AS login_month,
    COUNT(*)
FROM students
GROUP BY login_month
HAVING COUNT(*) > 2;
