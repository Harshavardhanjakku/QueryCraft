-- LIMIT clause is used to restrict the number of rows returned
-- It helps to fetch only top 'n' records from a table

-- Syntax:
-- SELECT column_names FROM table_name LIMIT n;

-- Example: Fetch first 3 rows from teachers table
SELECT * 
FROM teachers
LIMIT 3;

-- Note:
-- LIMIT 3 means only first 3 rows will be displayed
-- Useful when working with large datasets to preview data
