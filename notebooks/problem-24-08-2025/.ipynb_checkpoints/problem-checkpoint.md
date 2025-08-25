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

# 📝 Problem 2: SQL – Find Products Purchased in All Months

### **Problem Statement**

You have a table `product_sales(product_id, sale_date)` representing product sales dates. Write a SQL query to **find products that were sold in every month of 2025**.

### **Sample Input** (`product_sales`)

| product\_id | sale\_date |
| ----------- | ---------- |
| P1          | 2025-01-10 |
| P1          | 2025-02-15 |
| P1          | 2025-03-20 |
| P2          | 2025-01-05 |
| P2          | 2025-02-10 |

### **Expected Output**

| product\_id |
| ----------- |
| P1          |

---