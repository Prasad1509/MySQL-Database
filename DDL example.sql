CREATE DATABASE IF NOT EXISTS school_db;

USE school_db;

CREATE TABLE students (
    student_id INT PRIMARY KEY,
    name VARCHAR(100) NOT NULL,
    age INT DEFAULT 18 CHECK (age > 0),
    class VARCHAR(20) DEFAULT 'FYBSc'
);

ALTER TABLE students ADD email VARCHAR(100);

ALTER TABLE students ALTER age SET DEFAULT 18;

ALTER TABLE students DROP COLUMN email;

INSERT INTO students (student_id, name, age, class) VALUES
(1, 'Atharv', 19, 'FYBSc'),
(2, 'Prasad', 20, 'SYBSc'),
(3, 'Riya', 18, 'FYBSc'),
(4, 'Karan', 21, 'TYBSc');

INSERT INTO students (student_id, name, class)
VALUES (5, 'Sneha', 'SYBSc');

CREATE DATABASE IF NOT EXISTS school_db;

USE school_db;

CREATE TABLE students (
    student_id INT PRIMARY KEY,
    name VARCHAR(100) NOT NULL,
    age INT DEFAULT 18 CHECK (age > 0),
    class VARCHAR(20) DEFAULT 'FYBSc'
);
SELECT * FROM students;

ALTER TABLE students ADD email VARCHAR(100);
SELECT * FROM students;

ALTER TABLE students ALTER age SET DEFAULT 18;
SELECT * FROM students;

ALTER TABLE students DROP COLUMN email;
SELECT * FROM students;

INSERT INTO students (student_id, name, age, class) VALUES
(1, 'Atharv', 19, 'FYBSc'),
(2, 'Prasad', 20, 'SYBSc'),
(3, 'Riya', 18, 'FYBSc'),
(4, 'Karan', 21, 'TYBSc');

SELECT * FROM students;

INSERT INTO students (student_id, name, class)
VALUES (5, 'Sneha', 'SYBSc');

SELECT * FROM students;


