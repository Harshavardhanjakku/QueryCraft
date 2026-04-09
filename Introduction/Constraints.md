 
# 🧱 **Constraints**

---

## **🔹 NOT NULL**

> The column should **not contain NULL values**.
> It ensures **a value must exist**.
> **Syntax:**

```
colname DATATYPE NOT NULL
```

---

## **🔹 UNIQUE**

> Column lo **all values different** undali.
> **Duplicates absolutely allowed kadu.**
> **Syntax:**

```
colname DATATYPE UNIQUE
```

---

## **🔹 PRIMARY KEY**

> [!NOTE]
> Makes the column **UNIQUE** + **NOT NULL** automatically.

### ✅ **Version 1 — Constraint Style**

```sql
CREATE TABLE student (
    student_id INT,
    PRIMARY KEY (student_id)
);
```

---

### ✅ **OR (Alternate version)**

```sql
CREATE TABLE student (
    student_id INT PRIMARY KEY
);
```

---

## **🔹 FOREIGN KEY**

> It **prevents invalid links**, maintains **referential integrity**,
> and ensures the value **must exist in parent table**.

```sql
CREATE TABLE temp2 (
    rollno INT,
    FOREIGN KEY (rollno) REFERENCES temp(id)
);
```

**DEFAULT**

> Sets the default value of thecolumn 
> 
```sql
CREATE TABLE temp2 (
    salary INT DEFAULT 25000,
);
```