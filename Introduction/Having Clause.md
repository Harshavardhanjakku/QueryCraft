## SQL HAVING Clause — Complete Notes

### Definition

HAVING clause is used to filter grouped data based on aggregate conditions.

---

### SQL Query Execution Order

```
SELECT
FROM
WHERE
GROUP BY
HAVING
ORDER BY
```

---

### Syntax

```
SELECT column_names
FROM table_name
WHERE condition
GROUP BY column_names
HAVING aggregate_condition
ORDER BY column_name ASC/DESC;
```

---

### Explanation of Each Clause

* **SELECT** → specifies the columns to display
* **FROM** → specifies the table
* **WHERE** → filters rows before grouping
* **GROUP BY** → groups rows based on column values
* **HAVING** → filters groups after aggregation
* **ORDER BY** → sorts the final result

---

### Example 1

```
SELECT city, COUNT(*)
FROM student
GROUP BY city
HAVING COUNT(*) > 2;
```

**Explanation:**

* Groups students by city
* Counts number of students in each city
* Returns only cities with more than 2 students

---

### Example 2

```
SELECT city, AVG(marks)
FROM student
WHERE marks > 50
GROUP BY city
HAVING AVG(marks) > 70
ORDER BY AVG(marks) DESC;
```

**Explanation:**

* Filters students with marks > 50
* Groups them by city
* Calculates average marks per city
* Shows only cities where average marks > 70
* Sorts results in descending order

---

### WHERE vs HAVING

| Clause | Works On | Purpose                    |
| ------ | -------- | -------------------------- |
| WHERE  | Rows     | Filters individual records |
| HAVING | Groups   | Filters grouped results    |

---

### Key Rules

* WHERE is applied before GROUP BY
* HAVING is applied after GROUP BY
* Aggregate functions cannot be used in WHERE
* Aggregate functions must be used in HAVING

---

### Common Mistake

❌ Incorrect:

```
SELECT city
FROM student
WHERE COUNT(*) > 2
GROUP BY city;
```

✅ Correct:

```
SELECT city
FROM student
GROUP BY city
HAVING COUNT(*) > 2;
```

---

### One-Line Memory Format

```
SELECT columns FROM table WHERE condition GROUP BY columns HAVING condition ORDER BY column;
```

---

### Quick Summary

* Use WHERE for row filtering
* Use GROUP BY to create groups
* Use HAVING for aggregate filtering
* Use ORDER BY for sorting

---

