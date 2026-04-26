-- ================================
-- 1. Aggregate functions on numeric column
-- ================================

SELECT SUM(marks) FROM student;
-- Returns total of marks (ignores NULL values)

SELECT AVG(marks) FROM student;
-- Returns average of marks (ignores NULL values)



-- ================================
-- 2. Behavior on EMPTY table
-- ================================

DROP TABLE IF EXISTS temp;

CREATE TABLE temp (
    id INT,
    marks INT
);

SELECT SUM(marks) FROM temp;
-- No rows → result = NULL (nothing to sum)

SELECT AVG(marks) FROM temp;
-- No rows → result = NULL (nothing to average)



-- ================================
-- 3. Aggregate on VARCHAR column
-- ================================

DROP TABLE IF EXISTS temp;

CREATE TABLE temp (
    id INT,
    marks INT,
    name VARCHAR(10)
);

-- Insert numeric string
INSERT INTO temp VALUES (12, 13, '123');

SELECT SUM(name) FROM temp;
-- MySQL converts '123' → 123 → SUM = 123

SELECT AVG(name) FROM temp;
-- AVG = 123



-- ================================
-- 4. Multiple rows with numeric strings
-- ================================

INSERT INTO temp VALUES (13, 20, '100');

SELECT SUM(name), AVG(name) FROM temp;
-- '123' → 123
-- '100' → 100
-- SUM = 223
-- AVG = 111.5



-- ================================
-- 5. Important Notes
-- ================================

-- 1. SUM() and AVG() ignore NULL values
-- 2. If table has no rows → result = NULL
-- 3. VARCHAR values are implicitly converted to numbers
-- 4. Non-numeric strings → treated as 0
--    Example: 'harsha' → 0
