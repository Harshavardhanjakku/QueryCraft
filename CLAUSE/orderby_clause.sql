-- ORDER BY sort the data based on the column name where DESC - DEscending and ASC - Ascending 
-- Optional: Using ORDER BY with LIMIT
-- This ensures which "top" rows you want (based on sorting)

-- Example: Get top 3 teachers based on highest salary
SELECT * 
FROM teachers
ORDER BY salary DESC   -- sorts data in descending order
LIMIT 3;               -- returns top 3 rows after sorting