## **Problem Scenario: E-commerce Orders Analysis**

### **Background**

You work as a Data Engineer for an e-commerce company. The raw order data contains details about customers, products, payment methods, prices, quantities, and order statuses.

Your team needs to generate daily metrics and product-level insights to help business analysts track performance, identify top products, and analyze customer behavior.

---

## **Business Objectives**

1. **Daily Sales Metrics**

   * Total orders per day
   * Total and average revenue per day
   * Number of unique customers per day
   * Percentage of cancelled orders

2. **Top Products Analysis**

   * Most sold products by quantity
   * Highest revenue products per day
   * Product category sales distribution

3. **Customer Insights**

   * Average order value per customer
   * Total orders per customer
   * Top paying customers

4. **Payment Method Analysis**

   * Count of orders by payment method
   * Revenue split by payment method

---

## **Sample Input Table (Simplified)**

| order\_id | customer\_id | product\_id | category    | payment\_method | order\_time         | price  | quantity | total\_amount | status    |
| --------- | ------------ | ----------- | ----------- | --------------- | ------------------- | ------ | -------- | ------------- | --------- |
| O125678   | C1           | P5          | Electronics | Credit Card     | 2025-08-20 09:15:00 | 250.00 | 2        | 500.00        | Completed |
| O245789   | C2           | P10         | Clothing    | UPI             | 2025-08-20 09:30:00 | 50.00  | 1        | 50.00         | Completed |
| O356890   | C1           | P2          | Electronics | PayPal          | 2025-08-20 10:00:00 | 100.00 | 3        | 300.00        | Cancelled |
| O445678   | C3           | P7          | Books       | Debit Card      | 2025-08-20 11:00:00 | 75.00  | 1        | 75.00         | Completed |

---

## **Expected Output 1 – Daily Metrics Table**

| date       | total\_orders | total\_revenue | avg\_revenue\_per\_order | unique\_customers | cancelled\_pct |
| ---------- | ------------- | -------------- | ------------------------ | ----------------- | -------------- |
| 2025-08-20 | 300           | 45250.00       | 150.83                   | 180               | 8%             |
| 2025-08-21 | 295           | 46300.50       | 156.27                   | 175               | 9%             |

---

## **Expected Output 2 – Top Products Table**

| date       | product\_id | category    | total\_quantity | total\_revenue |
| ---------- | ----------- | ----------- | --------------- | -------------- |
| 2025-08-20 | P5          | Electronics | 35              | 8750.00        |
| 2025-08-20 | P10         | Clothing    | 28              | 1400.00        |
| 2025-08-20 | P2          | Electronics | 20              | 6000.00        |

---

## **Expected Output 3 – Payment Method Analysis**

| date       | payment\_method | order\_count | total\_revenue |
| ---------- | --------------- | ------------ | -------------- |
| 2025-08-20 | Credit Card     | 120          | 25000.00       |
| 2025-08-20 | UPI             | 80           | 10000.00       |
| 2025-08-20 | PayPal          | 50           | 5200.00        |

---

This problem has **real-world complexity** with:

* Missing values in `category` and `payment_method`
* Cancellations impacting revenue
* Daily aggregation needs
* Top product and customer analysis

---