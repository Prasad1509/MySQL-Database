USE school_db;
-- 1. Select all
SELECT * FROM students;

-- 2. Select name and class only
SELECT name, class FROM students;

-- 3. Where condition
SELECT * FROM students WHERE age > 18;

-- 4. Sorting by name
SELECT * FROM students ORDER BY name ASC;

-- 5. Limit output
SELECT * FROM students LIMIT 2;

-- 6. Between age range
SELECT * FROM students WHERE age BETWEEN 18 AND 21;

-- 7. Pattern match: names starting with 'A'
SELECT * FROM students WHERE name LIKE 'A%';

-- 8. Use aliasUSE school_db;
-- 1. Select all
SELECT * FROM students;

-- 2. Select name and class only
SELECT name, class FROM students;

-- 3. Where condition
SELECT * FROM students WHERE age > 18;

-- 4. Sorting by name
SELECT * FROM students ORDER BY name ASC;

-- 5. Limit output
SELECT * FROM students LIMIT 2;

-- 6. Between age range
SELECT * FROM students WHERE age BETWEEN 18 AND 21;

-- 7. Pattern match: names starting with 'A'
SELECT * FROM students WHERE name LIKE 'A%';

-- 8. Use alias
SELECT name AS FullName, class AS StdClass FROM students;

SELECT name AS FullName, class AS StdClass FROM students;
