 
# 🚀 SQL `ALTER TABLE` Cheat Sheet

---

## 🔹 1. ADD – Add new column

👉 Syntax:

```sql
ALTER TABLE table_name
ADD column_name datatype;
```

👉 Example:

```sql
ALTER TABLE student
ADD email VARCHAR(50);
```

➡️ Adds a new column `email`

---

### ➕ Add multiple columns

```sql
ALTER TABLE student
ADD (phone VARCHAR(15), address VARCHAR(100));
```

---

## 🔹 2. MODIFY – Change datatype / constraints

👉 Syntax:

```sql
ALTER TABLE table_name
MODIFY column_name datatype;
```

👉 Example:

```sql
ALTER TABLE student
MODIFY age INT;
```

➡️ Changes datatype or constraints only

---

## 🔹 3. CHANGE – Rename column + modify datatype

👉 Syntax:

```sql
ALTER TABLE table_name
CHANGE old_name new_name datatype;
```

👉 Example:

```sql
ALTER TABLE student
CHANGE age student_age INT;
```

➡️ Renames column and modifies datatype

---

## 🔹 4. DROP – Delete column

👉 Syntax:

```sql
ALTER TABLE table_name
DROP COLUMN column_name;
```

👉 Example:

```sql
ALTER TABLE student
DROP COLUMN email;
```

➡️ Removes the column permanently ⚠️

---

## 🔹 5. RENAME COLUMN

👉 Syntax:

```sql
ALTER TABLE table_name
RENAME COLUMN old_name TO new_name;
```

👉 Example:

```sql
ALTER TABLE student
RENAME COLUMN name TO student_name;
```

➡️ Only renames column (cleaner than CHANGE)

---

## 🔹 6. RENAME TABLE

👉 Syntax:

```sql
ALTER TABLE old_table_name
RENAME TO new_table_name;
```

👉 Example:

```sql
ALTER TABLE student
RENAME TO students;
```

---

## 🔹 7. ADD CONSTRAINT

👉 Add PRIMARY KEY:

```sql
ALTER TABLE student
ADD PRIMARY KEY (id);
```

👉 Add FOREIGN KEY:

```sql
ALTER TABLE orders
ADD CONSTRAINT fk_student
FOREIGN KEY (student_id)
REFERENCES student(id);
```

👉 Add UNIQUE:

```sql
ALTER TABLE student
ADD UNIQUE (email);
```

👉 Add NOT NULL:

```sql
ALTER TABLE student
MODIFY name VARCHAR(50) NOT NULL;
```

---

## 🔹 8. DROP CONSTRAINT

👉 Drop PRIMARY KEY:

```sql
ALTER TABLE student
DROP PRIMARY KEY;
```

👉 Drop FOREIGN KEY:

```sql
ALTER TABLE orders
DROP FOREIGN KEY fk_student;
```

👉 Drop UNIQUE:

```sql
ALTER TABLE student
DROP INDEX email;
```

---

## 🧠 Quick Summary Table

| Operation         | Command                |
| ----------------- | ---------------------- |
| Add column        | ADD                    |
| Modify column     | MODIFY                 |
| Rename column     | CHANGE / RENAME COLUMN |
| Delete column     | DROP                   |
| Rename table      | RENAME TO              |
| Add constraint    | ADD CONSTRAINT         |
| Remove constraint | DROP                   |

---

## ⚡ Pro Tips (Interview 🔥)

* Use **MODIFY** → for datatype change
* Use **CHANGE** → when renaming + datatype
* Use **RENAME COLUMN** → cleaner rename
* Be careful with **DROP** → data will be lost
* Constraints improve **data integrity**

---
 

## 🔹 1. `MODIFY` – Change datatype / constraints only

* The **column name remains the same**
* You can change:

  * Datatype
  * Size (e.g., `VARCHAR(20)` → `VARCHAR(50)`)
  * Constraints (e.g., `NOT NULL`, `DEFAULT`, etc.)

👉 Example:

```sql
ALTER TABLE student
MODIFY age INT;
```

➡️ Meaning:

* Column name `age` stays the same
* Only datatype (or properties) are changed

---

## 🔹 2. `CHANGE` – Rename + datatype change

* Used when you want to **rename a column**
* You must specify:

  * Old column name
  * New column name
  * Datatype (**mandatory**, even if unchanged)

👉 Example:

```sql
ALTER TABLE student
CHANGE age student_age INT;
```

➡️ Meaning:

* Column `age` is renamed to `student_age`
* Datatype must be provided

---

## 🧠 Main Differences

| Feature                    | MODIFY       | CHANGE |
| -------------------------- | ------------ | ------ |
| Rename column              | ❌ No         | ✅ Yes  |
| Change datatype            | ✅ Yes        | ✅ Yes  |
| Need to write column twice | ❌ No         | ✅ Yes  |
| Datatype required          | ❌ Not always | ✅ Yes  |

---

## ⚡ Easy Memory Trick

* **MODIFY → Modify properties only**
* **CHANGE → Change name also**

---

## 🚨 Important Notes

* In `CHANGE`, **datatype is compulsory**
* In `MODIFY`, datatype is usually specified for clarity, but the focus is only on modifying properties
* Even if you keep the same column name in `CHANGE`, you still need to write it twice

 