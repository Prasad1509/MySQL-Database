CREATE DATABASE student_db;
USE student_db;
CREATE TABLE students (
    student_id INT PRIMARY KEY,
    name VARCHAR(100),
    age INT,
    course VARCHAR(100)
);
INSERT INTO students (student_id, name, age, course)
VALUES
(1, 'Atharv', 19, 'Full Stack Development'),
(2, 'Prasad', 20, 'Data Science'),
(3, 'Riya', 18, 'Web Development');
SELECT * FROM students;
