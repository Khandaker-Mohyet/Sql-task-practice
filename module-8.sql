CREATE TABLE students (
    id SERIAL PRIMARY KEY,
    roll INT UNIQUE NOT NULL,
    name VARCHAR(100) NOT NULL,
    age INT,
    department VARCHAR(50),
    score DECIMAL(5,2),
    status VARCHAR(20),
    last_login DATE
);

DROP TABLE students

INSERT INTO students (roll, name, age, department, score, status, last_login) VALUES
(101, 'Alice Ahmed', 21, 'CSE', 88.50, 'passed', '2025-05-10'),
(102, 'Bilal Hossain', 22, 'EEE', 72.00, 'passed', '2025-05-11'),
(103, 'Champa Roy', 20, 'CSE', 49.00, 'failed', '2025-05-12'),
(104, 'David Khan', 23, 'BBA', 64.75, 'passed', '2025-05-13'),
(105, 'Elina Sarker', 21, 'CSE', 35.25, 'failed', '2025-05-14');

SELECT * FROM students


ALTER TABLE students
ADD COLUMN email VARCHAR;


ALTER TABLE students
RENAME COLUMN email TO student_email;


ALTER TABLE students
ADD CONSTRAINT unique_student_email UNIQUE (student_email)

CREATE TABLE courses (
    course_id SERIAL PRIMARY KEY,
    course_name VARCHAR(100),
    credits INT
);

ALTER TABLE students
DROP COLUMN age;

-- Write a query to find all students who have a score greater than 80 and not null.

SELECT * FROM students
WHERE score>80 AND score IS NOT null;

-- Use the NOT operator to exclude students from a specific department.

SELECT * FROM students
WHERE NOT department = 'CSE'

-- Fetch students whose names start with ‘A’ using LIKE and ILIKE.

SELECT * FROM students
WHERE "name" LIKE 'A%'

-- Select all students whose age is between 18 and 25.
SELECT * FROM students
WHERE age BETWEEN 18 AND 25;

-- Retrieve rows using IN for a specific set of roll numbers.
SELECT * FROM students
WHERE department IN ('CSE')