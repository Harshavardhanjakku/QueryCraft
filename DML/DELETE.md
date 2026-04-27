
# 🗂️ DELETE Methods in SQL (Notes)

## 🔴 1. Safe Update Mode

* Prevents `DELETE` / `UPDATE` without `WHERE` using **KEY column**
* Avoids accidental full table modification

---

## ✅ 2. DELETE using PRIMARY KEY

```sql
DELETE FROM student
WHERE rollno = 5;
```

* Uses **KEY column**
* Works in safe mode ✅

---

## ✅ 3. DELETE using condition on KEY

```sql
DELETE FROM student
WHERE rollno > 0;
```

* Deletes multiple rows
* Safe mode compatible ✅

---

## ✅ 4. DELETE using LIMIT

```sql
DELETE FROM student
LIMIT 5;
```

* Deletes limited rows
* Allowed even in safe mode ✅

---

## ✅ 5. TRUNCATE TABLE

```sql
TRUNCATE TABLE student;
```

* Deletes **all rows**
* Faster than DELETE 🚀
* Resets AUTO_INCREMENT
* No safe update restriction

---

## ✅ 6. Disable Safe Update (Temporary)

```sql
SET SQL_SAFE_UPDATES = 0;

DELETE FROM student;

SET SQL_SAFE_UPDATES = 1;
```

* Use carefully ⚠️

---

# 🟢 7. Soft Delete (Flag Method)

## ➤ Add column

```sql
ALTER TABLE student
ADD COLUMN is_deleted BOOLEAN DEFAULT FALSE;
```

---

## ➤ Mark as deleted

```sql
UPDATE student
SET is_deleted = TRUE
WHERE rollno = 5;
```

---

## ➤ View active records

```sql
SELECT * 
FROM student
WHERE is_deleted = FALSE;
```

---

## ➤ Create VIEW

```sql
CREATE VIEW active_students AS
SELECT * 
FROM student
WHERE is_deleted = FALSE;
```

---

## ➤ Use VIEW

```sql
SELECT * FROM active_students;
```

---

## ➤ Add index (performance)

```sql
CREATE INDEX idx_is_deleted ON student(is_deleted);
```

---

# ⚡ Key Points

* `DELETE` → removes data permanently
* `TRUNCATE` → fast full delete
* `Safe Mode` → requires KEY in WHERE
* `Soft Delete` → mark instead of remove (real-world usage)

---

I 
