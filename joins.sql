DROP TABLE IF EXISTS marks;
DROP TABLE IF EXISTS students;

CREATE TABLE students (
    student_id INT PRIMARY KEY,
    name VARCHAR(100),
    class VARCHAR(20)
);

CREATE TABLE marks (
    mark_id INT PRIMARY KEY,
    student_id INT,
    subject VARCHAR(50),
    score INT,
    FOREIGN KEY (student_id) REFERENCES students(student_id)
);
-- Insert into students table
INSERT INTO students (student_id, name, class) VALUES
(1, 'Atharv', 'FYBSc'),
(2, 'Prasad', 'SYBSc'),
(3, 'Neha', 'TYBSc'),
(4, 'Snehal', 'FYBSc');

-- Insert into marks table
INSERT INTO marks (mark_id, student_id, subject, score) VALUES
(1, 1, 'Math', 85),
(2, 1, 'Science', 90),
(3, 2, 'Math', 70),
(4, 3, 'Science', 88);

select* from students;
select* from marks;

SELECT s.name, s.class, m.subject, m.score
FROM students s
INNER JOIN marks m ON s.student_id = m.student_id;

SELECT s.name, s.class, m.subject, m.score
FROM students s
LEFT JOIN marks m ON s.student_id = m.student_id;
-- Right join
SELECT s.name, s.class, m.subject, m.score
FROM students s
RIGHT JOIN marks m ON s.student_id = m.student_id;
-- find student with no marks
SELECT s.name
FROM students s
LEFT JOIN marks m ON s.student_id = m.student_id
WHERE m.student_id IS NULL;

SELECT * FROM students
WHERE student_id  IN (SELECT student_id FROM marks WHERE score > 80);

--  student subject wise  score
select s.name,m.subject,m.score
from students s
JOIN marks  m ON s.student_id=m.student_id;

-- total marks of each students
select s.name,sum(m.score) as total_score
from students s
join marks m on s.student_id=m.student_id
group by s.name;

-- Average marks by class
SELECT s.class, AVG(m.score) AS average_score
FROM students s
JOIN marks m ON s.student_id = m.student_id
GROUP BY s.class;

-- students who scored in math
SELECT s.name, m.score
FROM students s
JOIN marks m ON s.student_id = m.student_id
WHERE m.subject = 'Math';

-- higher scored in each subject

SELECT subject, MAX(score) AS highest_score
FROM marks
GROUP BY subject;

--  topper nmae in science
SELECT s.name, m.score
FROM students s
JOIN marks m ON s.student_id = m.student_id
WHERE m.subject = 'Science'
ORDER BY m.score DESC
LIMIT 1;


 
DROP TABLE IF EXISTS marks;
DROP TABLE IF EXISTS students;

CREATE TABLE students (
    student_id INT PRIMARY KEY,
    name VARCHAR(100),
    class VARCHAR(20)
);

CREATE TABLE marks (
    mark_id INT PRIMARY KEY,
    student_id INT,
    subject VARCHAR(50),
    score INT,
    FOREIGN KEY (student_id) REFERENCES students(student_id)
);
-- Insert into students table
INSERT INTO students (student_id, name, class) VALUES
(1, 'Atharv', 'FYBSc'),
(2, 'Prasad', 'SYBSc'),
(3, 'Neha', 'TYBSc'),
(4, 'Snehal', 'FYBSc');

-- Insert into marks table
INSERT INTO marks (mark_id, student_id, subject, score) VALUES
(1, 1, 'Math', 85),
(2, 1, 'Science', 90),
(3, 2, 'Math', 70),
(4, 3, 'Science', 88);

select* from students;
select* from marks;

SELECT s.name, s.class, m.subject, m.score
FROM students s
INNER JOIN marks m ON s.student_id = m.student_id;

SELECT s.name, s.class, m.subject, m.score
FROM students s
LEFT JOIN marks m ON s.student_id = m.student_id;
-- Right join
SELECT s.name, s.class, m.subject, m.score
FROM students s
RIGHT JOIN marks m ON s.student_id = m.student_id;
-- find student with no marks
SELECT s.name
FROM students s
LEFT JOIN marks m ON s.student_id = m.student_id
WHERE m.student_id IS NULL;

SELECT * FROM students
WHERE student_id  IN (SELECT student_id FROM marks WHERE score > 80);

--  student subject wise  score
select s.name,m.subject,m.score
from students s
JOIN marks  m ON s.student_id=m.student_id;

-- total marks of each students
select s.name,sum(m.score) as total_score
from students s
join marks m on s.student_id=m.student_id
group by s.name;

-- Average marks by class
SELECT s.class, AVG(m.score) AS average_score
FROM students s
JOIN marks m ON s.student_id = m.student_id
GROUP BY s.class;

-- students who scored in math
SELECT s.name, m.score
FROM students s
JOIN marks m ON s.student_id = m.student_id
WHERE m.subject = 'Math';

-- higher scored in each subject

SELECT subject, MAX(score) AS highest_score
FROM marks
GROUP BY subject;

--  topper nmae in science
SELECT s.name, m.score
FROM students s
JOIN marks m ON s.student_id = m.student_id
WHERE m.subject = 'Science'
ORDER BY m.score DESC
LIMIT 1;


 
