UPDATE students
SET class = 'SYBSc'
WHERE student_id = 1;

DELETE FROM students
WHERE student_id = 4;

SELECT * FROM students
WHERE class = 'SYBSc';

SELECT name, class FROM students;

SELECT * FROM students
WHERE age > 18;

UPDATE students SET class = 'SYBSc' WHERE student_id = 1;

DELETE FROM students WHERE student_id = 4;

SELECT * FROM students WHERE class = 'SYBSc';

SELECT name, class FROM students;

SELECT * FROM students WHERE age > 18;


USE school_db;

UPDATE students
SET class = 'TYBSc'
WHERE name = 'Atharv';

UPDATE students
SET age = 21
WHERE name = 'Prasad';
SELECT * FROM students;
