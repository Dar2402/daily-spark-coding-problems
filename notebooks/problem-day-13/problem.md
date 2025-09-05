# 📝 Problem 1: PySpark – Identify Peak Sales Day per Product

### **Problem Statement**

You have a PySpark DataFrame containing daily sales data for multiple products. Write a PySpark program to **find the date with the highest sales for each product**.

### **Sample Input** (`product_sales`)

| product | sale\_date | sales |
| ------- | ---------- | ----- |
| Laptop  | 2025-01-01 | 100   |
| Laptop  | 2025-01-02 | 250   |
| Laptop  | 2025-01-03 | 200   |
| Phone   | 2025-01-01 | 300   |
| Phone   | 2025-01-02 | 150   |
| Phone   | 2025-01-03 | 400   |

### **Expected Output**

| product | peak\_sale\_date | peak\_sales |
| ------- | ---------------- | ----------- |
| Laptop  | 2025-01-02       | 250         |
| Phone   | 2025-01-03       | 400         |

---

# 📝 Problem 2: SQL – Detect Products with Sales Drop

### **Problem Statement**

You have a SQL table `daily_product_sales(product_id, sale_date, sales)` with daily sales for each product. Write a SQL query to **find products where sales decreased compared to the previous day**.

### **Sample Input** (`daily_product_sales`)

| product\_id | sale\_date | sales |
| ----------- | ---------- | ----- |
| P1          | 2025-01-01 | 100   |
| P1          | 2025-01-02 | 120   |
| P1          | 2025-01-03 | 90    |
| P2          | 2025-01-01 | 200   |
| P2          | 2025-01-02 | 180   |
| P2          | 2025-01-03 | 220   |

### **Expected Output**

| product\_id | sale\_date | sales | previous\_day\_sales |
| ----------- | ---------- | ----- | -------------------- |
| P1          | 2025-01-03 | 90    | 120                  |
| P2          | 2025-01-02 | 180   | 200                  |

---