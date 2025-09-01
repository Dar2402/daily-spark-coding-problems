# 📝 Problem 1: PySpark – Rank Employees by Salary within Departments

### **Problem Statement**

You have a PySpark DataFrame containing employee salaries across departments. Write a PySpark program to **rank employees within each department based on salary in descending order**.

### **Sample Input** (`employee_salaries`)

| emp\_id | dept | salary |
| ------- | ---- | ------ |
| 1       | HR   | 60000  |
| 2       | HR   | 75000  |
| 3       | HR   | 50000  |
| 4       | IT   | 90000  |
| 5       | IT   | 85000  |

### **Expected Output**

| emp\_id | dept | salary | rank |
| ------- | ---- | ------ | ---- |
| 2       | HR   | 75000  | 1    |
| 1       | HR   | 60000  | 2    |
| 3       | HR   | 50000  | 3    |
| 4       | IT   | 90000  | 1    |
| 5       | IT   | 85000  | 2    |

---
# 📝 Problem 2: SQL – Find Products Purchased in **All Months of 2025**

### **Problem Statement**

You have a table `product_sales(product_id, sale_date)` where `sale_date` is a `DATE`. Write a SQL query to find **products that had at least one sale in every calendar month of 2025** (i.e., all 12 months from January to December 2025).

### **Sample Input** (`product_sales`)

| product\_id | sale\_date |
| ----------- | ---------- |
| P1          | 2025-01-10 |
| P1          | 2025-02-12 |
| P1          | 2025-03-09 |
| P1          | 2025-04-18 |
| P1          | 2025-05-03 |
| P1          | 2025-06-27 |
| P1          | 2025-07-14 |
| P1          | 2025-08-21 |
| P1          | 2025-09-02 |
| P1          | 2025-10-11 |
| P1          | 2025-11-06 |
| P1          | 2025-12-05 |
| P2          | 2025-01-05 |
| P2          | 2025-02-10 |
| P2          | 2025-03-15 |
| P2          | 2025-05-20 |
| P2          | 2025-06-08 |
| P2          | 2025-07-22 |
| P2          | 2025-08-30 |
| P2          | 2025-10-01 |
| P2          | 2025-11-19 |
| P2          | 2025-12-07 |
| P3          | 2025-01-02 |
| P3          | 2025-02-14 |
| P3          | 2025-03-03 |
| P3          | 2025-04-25 |
| P3          | 2025-05-09 |
| P3          | 2025-06-16 |
| P3          | 2025-07-07 |
| P3          | 2025-08-12 |
| P3          | 2025-09-28 |
| P3          | 2025-10-20 |
| P3          | 2025-11-03 |
| P3          | 2025-12-29 |

### **Expected Output**

| product\_id |
| ----------- |
| P1          |
| P3          |

---