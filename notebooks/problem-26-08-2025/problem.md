# 📝 Problem 1: PySpark – Calculate Rolling 3-Day Average of Sales

### **Problem Statement**

You have a PySpark DataFrame containing daily sales data. Write a PySpark program to **calculate the rolling 3-day average sales** for each date, ordered by the date column.

### **Sample Input** (`daily_sales`)

| sale\_date | sales |
| ---------- | ----- |
| 2025-01-01 | 100   |
| 2025-01-02 | 200   |
| 2025-01-03 | 300   |
| 2025-01-04 | 400   |
| 2025-01-05 | 500   |

### **Expected Output**

| sale\_date | sales | rolling\_3\_day\_avg |
| ---------- | ----- | -------------------- |
| 2025-01-01 | 100   | 100.0                |
| 2025-01-02 | 200   | 150.0                |
| 2025-01-03 | 300   | 200.0                |
| 2025-01-04 | 400   | 300.0                |
| 2025-01-05 | 500   | 400.0                |

---

# 📝 Problem 2: SQL – Find Customers with Increasing Purchase Amounts

### **Problem Statement**

You have a SQL table `purchases(customer_id, purchase_date, amount)`. Write a query to **find customers whose purchase amounts strictly increased with each new purchase date**.

### **Sample Input** (`purchases`)

| customer\_id | purchase\_date | amount |
| ------------ | -------------- | ------ |
| C1           | 2025-01-01     | 100    |
| C1           | 2025-01-05     | 200    |
| C1           | 2025-01-10     | 300    |
| C2           | 2025-01-02     | 150    |
| C2           | 2025-01-06     | 120    |
| C3           | 2025-01-03     | 200    |
| C3           | 2025-01-09     | 250    |

### **Expected Output**

| customer\_id |
| ------------ |
| C1           |
| C3           |

---