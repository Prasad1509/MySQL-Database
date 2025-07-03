-- one to one
-- Main student table
CREATE TABLE student_master_1to1 (
    student_id INT PRIMARY KEY,
    name VARCHAR(50)
);-- one to one
-- Main student table
CREATE TABLE student_master_1to1 (
    student_id INT PRIMARY KEY,
    name VARCHAR(50)
);

-- Detail table (1:1)
CREATE TABLE student_details_1to1 (
    detail_id INT PRIMARY KEY,
    student_id INT UNIQUE,
    address VARCHAR(100),
    phone_number VARCHAR(15),
    FOREIGN KEY (student_id) REFERENCES student_master_1to1(student_id)
);


-- Insert students
INSERT INTO student_master_1to1 VALUES
(1, 'Atharv'),
(2, 'Prasad'),
(3, 'Sneha'),
(4,'neha');

-- Insert details (Only one detail per student allowed)
INSERT INTO student_details_1to1 VALUES
(101, 1, 'Pune', '9999999999'),
(102, 2, 'Mumbai', '8888888888'),
(103, 3, 'Ahilyanagar', '7777777777');

select * from student_master_1to1;
select * from student_details_1to1;

-- view student with address
select s.name,d.address
from student_master_1to1 s
join student_master_1to1 s on s.student_id = d.student_id;

-- student without details left join
SELECT s.name
FROM student_master_1to1 s
LEFT JOIN student_details_1to1 d
ON s.student_id = d.student_id
WHERE d.student_id IS NULL;
-- Add new student
INSERT INTO student_master_1to1 VALUES (4, 'Neha');

-- Add detail
INSERT INTO student_details_1to1 VALUES (104, 4, 'Nashik', '6666666666');

--  one to many 
DROP TABLE IF EXISTS marks;
CREATE TABLE marks (
    mark_id INT PRIMARY KEY,
    student_id INT,
    subject VARCHAR(50),
    score INT,
       FOREIGN KEY (student_id) REFERENCES student_master_1to1(student_id)
);
 
 INSERT INTO marks VALUES
(1, 1, 'Math', 90),
(2, 1, 'Science', 88),
(3, 2, 'Math', 76),
(4, 2, 'science', 75);

select s.name,m.subject,m.score
from student_master_1to1 s
JOIN marks m ON s.student_id = m.student_id;

-- many to one
-- 1. Create course table
CREATE TABLE courses (
    course_id INT PRIMARY KEY,
    course_name VARCHAR(50)
);

-- 2. Alter student_master_1to1 table to add course_id column
ALTER TABLE student_master_1to1 ADD course_id INT;

-- 3. Add foreign key to student_master_1to1
ALTER TABLE student_master_1to1
ADD FOREIGN KEY (course_id) REFERENCES courses(course_id);

-- 4. Insert courses
INSERT INTO courses VALUES
(201, 'DBMS'),
(202, 'Python');

-- 5. Assign courses to students
UPDATE student_master_1to1 SET course_id = 201 WHERE student_id = 1;
UPDATE student_master_1to1 SET course_id = 202 WHERE student_id = 2;

-- 6. View student with their course (corrected table name!)
SELECT s.name, c.course_name
FROM student_master_1to1 s
JOIN courses c ON s.course_id = c.course_id;

-- many to many

CREATE TABLE enrollments (
    student_id INT,
    course_id INT,
    PRIMARY KEY (student_id, course_id),
    FOREIGN KEY (student_id) REFERENCES students(student_id),
    FOREIGN KEY (course_id) REFERENCES courses(course_id)
);
-- Student 1 → DBMS, Python
-- Student 2 → Python only
INSERT INTO enrollments VALUES (1, 201), (1, 202), (2, 202);
SELECT s.name, c.course_name
FROM students s
JOIN enrollments e ON s.student_id = e.student_id
JOIN courses c ON e.course_id = c.course_id;

-- 1. Create the enrollment table (Join table)
CREATE TABLE enrollments (
    student_id INT,
    course_id INT,
    PRIMARY KEY (student_id, course_id),
    FOREIGN KEY (student_id) REFERENCES student_master_1to1(student_id),
    FOREIGN KEY (course_id) REFERENCES courses(course_id)
);

-- 2. Insert many-to-many data
-- Student 1 (Atharv) → DBMS, Python
-- Student 2 (Prasad) → Python only
INSERT INTO enrollments VALUES 
(1, 201),
(1, 202),
(2, 202);

-- 3. Join Query: Get student name and course name
SELECT s.name, c.course_name
FROM student_master_1to1 s
JOIN enrollments e ON s.student_id = e.student_id
JOIN courses c ON e.course_id = c.course_id;

SELECT s.name, c.course_name
FROM student_master_1to1 s
JOIN enrollments e ON s.student_id = e.student_id
JOIN courses c ON e.course_id = c.course_id;


-- Detail table (1:1)
CREATE TABLE student_details_1to1 (
    detail_id INT PRIMARY KEY,
    student_id INT UNIQUE,
    address VARCHAR(100),
    phone_number VARCHAR(15),
    FOREIGN KEY (student_id) REFERENCES student_master_1to1(student_id)
);


-- Insert students
INSERT INTO student_master_1to1 VALUES
(1, 'Atharv'),
(2, 'Prasad'),
(3, 'Sneha'),
(4,'neha');

-- Insert details (Only one detail per student allowed)
INSERT INTO student_details_1to1 VALUES
(101, 1, 'Pune', '9999999999'),
(102, 2, 'Mumbai', '8888888888'),
(103, 3, 'Ahilyanagar', '7777777777');

select * from student_master_1to1;
select * from student_details_1to1;

-- view student with address
select s.name,d.address
from student_master_1to1 s
join student_master_1to1 s on s.student_id = d.student_id;

-- student without details left join
SELECT s.name
FROM student_master_1to1 s
LEFT JOIN student_details_1to1 d
ON s.student_id = d.student_id
WHERE d.student_id IS NULL;
-- Add new student
INSERT INTO student_master_1to1 VALUES (4, 'Neha');

-- Add detail
INSERT INTO student_details_1to1 VALUES (104, 4, 'Nashik', '6666666666');

--  one to many 
DROP TABLE IF EXISTS marks;
CREATE TABLE marks (
    mark_id INT PRIMARY KEY,
    student_id INT,
    subject VARCHAR(50),
    score INT,
       FOREIGN KEY (student_id) REFERENCES student_master_1to1(student_id)
);
 
 INSERT INTO marks VALUES
(1, 1, 'Math', 90),
(2, 1, 'Science', 88),
(3, 2, 'Math', 76),
(4, 2, 'science', 75);

select s.name,m.subject,m.score
from student_master_1to1 s
JOIN marks m ON s.student_id = m.student_id;

-- many to one
-- 1. Create course table
CREATE TABLE courses (
    course_id INT PRIMARY KEY,
    course_name VARCHAR(50)
);

-- 2. Alter student_master_1to1 table to add course_id column
ALTER TABLE student_master_1to1 ADD course_id INT;

-- 3. Add foreign key to student_master_1to1
ALTER TABLE student_master_1to1
ADD FOREIGN KEY (course_id) REFERENCES courses(course_id);

-- 4. Insert courses
INSERT INTO courses VALUES
(201, 'DBMS'),
(202, 'Python');

-- 5. Assign courses to students
UPDATE student_master_1to1 SET course_id = 201 WHERE student_id = 1;
UPDATE student_master_1to1 SET course_id = 202 WHERE student_id = 2;

-- 6. View student with their course (corrected table name!)
SELECT s.name, c.course_name
FROM student_master_1to1 s
JOIN courses c ON s.course_id = c.course_id;

-- many to many

CREATE TABLE enrollments (
    student_id INT,
    course_id INT,
    PRIMARY KEY (student_id, course_id),
    FOREIGN KEY (student_id) REFERENCES students(student_id),
    FOREIGN KEY (course_id) REFERENCES courses(course_id)
);
-- Student 1 → DBMS, Python
-- Student 2 → Python only
INSERT INTO enrollments VALUES (1, 201), (1, 202), (2, 202);
SELECT s.name, c.course_name
FROM students s
JOIN enrollments e ON s.student_id = e.student_id
JOIN courses c ON e.course_id = c.course_id;

-- 1. Create the enrollment table (Join table)
CREATE TABLE enrollments (
    student_id INT,
    course_id INT,
    PRIMARY KEY (student_id, course_id),
    FOREIGN KEY (student_id) REFERENCES student_master_1to1(student_id),
    FOREIGN KEY (course_id) REFERENCES courses(course_id)
);

-- 2. Insert many-to-many data
-- Student 1 (Atharv) → DBMS, Python
-- Student 2 (Prasad) → Python only
INSERT INTO enrollments VALUES 
(1, 201),
(1, 202),
(2, 202);

-- 3. Join Query: Get student name and course name.
SELECT s.name, c.course_name
FROM student_master_1to1 s
JOIN enrollments e ON s.student_id = e.student_id
JOIN courses c ON e.course_id = c.course_id;

SELECT s.name, c.course_name
FROM student_master_1to1 s
JOIN enrollments e ON s.student_id = e.student_id
JOIN courses c ON e.course_id = c.course_id;
