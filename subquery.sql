SELECT name
FROM student_master_1to1 sSELECT name
FROM student_master_1to1 s
WHERE student_id IN (
    SELECT student_id
    FROM marks
    WHERE score > (SELECT AVG(score) FROM marks)
);SELECT name
FROM student_master_1to1 sSELECT name
FROM student_master_1to1 s
WHERE student_id IN (
    SELECT student_id
    FROM marks
    WHERE score > (SELECT AVG(score) FROM marks)
);

SELECT name
FROM student_master_1to1
WHERE student_id IN (
    SELECT student_id FROM marks WHERE score > 80
);

SELECT DISTINCT s.name
FROM student_master_1to1 s
WHERE NOT EXISTS (
    SELECT * FROM marks m
    WHERE m.student_id = s.student_id
    AND m.score < (SELECT AVG(score) FROM marks WHERE subject = m.subject)
);

SELECT name
FROM student_master_1to1
WHERE student_id IN (
    SELECT student_id
    FROM marks
    WHERE score > (SELECT AVG(score) FROM marks)
);
-- NOT IN Subquery – Find Students with No Marks
SELECT name
FROM student_master_1to1
WHERE student_id NOT IN (
    SELECT DISTINCT student_id FROM marks
);
WHERE student_id IN (
    SELECT student_id
    FROM marks
    WHERE score > (SELECT AVG(score) FROM marks)
);

SELECT name
FROM student_master_1to1
WHERE student_id IN (
    SELECT student_id FROM marks WHERE score > 80
);

SELECT DISTINCT s.name
FROM student_master_1to1 s
WHERE NOT EXISTS (
    SELECT * FROM marks m
    WHERE m.student_id = s.student_id
    AND m.score < (SELECT AVG(score) FROM marks WHERE subject = m.subject)
);

SELECT name
FROM student_master_1to1
WHERE student_id IN (
    SELECT student_id
    FROM marks
    WHERE score > (SELECT AVG(score) FROM marks)
);
-- NOT IN Subquery – Find Students with No Marks
SELECT name
FROM student_master_1to1
WHERE student_id NOT IN (
    SELECT DISTINCT student_id FROM marks
);

SELECT name
FROM student_master_1to1
WHERE student_id IN (
    SELECT student_id FROM marks WHERE score > 80
);

SELECT DISTINCT s.name
FROM student_master_1to1 s
WHERE NOT EXISTS (
    SELECT * FROM marks m
    WHERE m.student_id = s.student_id
    AND m.score < (SELECT AVG(score) FROM marks WHERE subject = m.subject)
);

SELECT name
FROM student_master_1to1
WHERE student_id IN (
    SELECT student_id
    FROM marks
    WHERE score > (SELECT AVG(score) FROM marks)
);
-- NOT IN Subquery – Find Students with No Marks
SELECT name
FROM student_master_1to1
WHERE student_id NOT IN (
    SELECT DISTINCT student_id FROM marks
);
WHERE student_id IN (
    SELECT student_id
    FROM marks
    WHERE score > (SELECT AVG(score) FROM marks)
);

SELECT name
FROM student_master_1to1
WHERE student_id IN (
    SELECT student_id FROM marks WHERE score > 80
);

SELECT DISTINCT s.name
FROM student_master_1to1 s
WHERE NOT EXISTS (
    SELECT * FROM marks m
    WHERE m.student_id = s.student_id
    AND m.score < (SELECT AVG(score) FROM marks WHERE subject = m.subject)
);

SELECT name
FROM student_master_1to1
WHERE student_id IN (
    SELECT student_id
    FROM marks
    WHERE score > (SELECT AVG(score) FROM marks)
);
-- NOT IN Subquery – Find Students with No Marks
SELECT name
FROM student_master_1to1
WHERE student_id NOT IN (
    SELECT DISTINCT student_id FROM marks
);
