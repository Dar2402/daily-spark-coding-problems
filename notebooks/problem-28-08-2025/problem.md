## **Problem Scenario: IoT Sensor Data Monitoring**

### **Background**

You work for a company that operates **smart warehouses** equipped with **IoT temperature and humidity sensors** in multiple locations worldwide. These sensors send readings every few minutes to a central data pipeline.

However, the raw data is messy:

* Some readings are missing or delayed.
* Multiple sensors sometimes report at the same timestamp.
* Occasionally, sensors malfunction and send outlier readings (e.g., -100°C).

Your team needs **daily aggregated metrics** to monitor warehouse conditions and ensure compliance with safety regulations.

---

### **Data Generation Requirements**

* **CSV with at least 1000 rows**
* 50+ unique **warehouse locations**
* Columns:

  * `sensor_id`
  * `warehouse_id`
  * `timestamp`
  * `temperature` (°C)
  * `humidity` (%)
  * `battery_level` (%)
  * `status` (OK, MALFUNCTION)
* Edge cases: missing readings, outlier values, multiple readings at same timestamp

---

## **Problem Definition**

You need to process the IoT sensor data using **PySpark** to generate:

1. **Daily metrics per warehouse**

   * Average, min, max temperature and humidity
   * Percentage of malfunctioning sensors
   * Count of missing readings (gaps > 15 min)
   * Average battery level

2. **Outlier Detection Table**

   * Identify sensors with extreme values (e.g., temp < -20°C or temp > 60°C, humidity > 90%)

3. **Handle Edge Cases**

   * Missing readings → fill with previous valid value
   * Malfunctioning sensors → exclude from averages

---

## **Sample Input Table (Simplified)**

| sensor\_id | warehouse\_id | timestamp           | temperature | humidity | battery\_level | status      |
| ---------- | ------------- | ------------------- | ----------- | -------- | -------------- | ----------- |
| S1         | W1            | 2025-08-25 09:00:00 | 25.5        | 60       | 85             | OK          |
| S1         | W1            | 2025-08-25 09:15:00 | 26.0        | 59       | 84             | OK          |
| S2         | W1            | 2025-08-25 09:00:00 | -100.0      | 61       | 80             | MALFUNCTION |
| S3         | W2            | 2025-08-25 09:05:00 | 22.3        | 58       | 90             | OK          |
| S3         | W2            | 2025-08-25 09:20:00 | 23.0        | 57       | 89             | OK          |

---

## **Expected Output 1 – Daily Metrics Table**

| warehouse\_id | date       | avg\_temp | min\_temp | max\_temp | avg\_humidity | malfunction\_pct | missing\_readings | avg\_battery |
| ------------- | ---------- | --------- | --------- | --------- | ------------- | ---------------- | ----------------- | ------------ |
| W1            | 2025-08-25 | 25.8      | 25.5      | 26.0      | 59.5          | 10%              | 1                 | 84.5         |
| W2            | 2025-08-25 | 22.6      | 22.3      | 23.0      | 57.5          | 0%               | 0                 | 89.5         |

---

## **Expected Output 2 – Outlier Detection Table**

| sensor\_id | warehouse\_id | date       | outlier\_type | value  |
| ---------- | ------------- | ---------- | ------------- | ------ |
| S2         | W1            | 2025-08-25 | Temp Low      | -100.0 |
| S3         | W2            | 2025-08-25 | Humidity High | 95.0   |

---

## **Scalability & Realism**

* Use **window functions** for gap detection
* **Partition by date & warehouse** for big data scalability
* Outlier detection logic should be configurable (e.g., thresholds from config table)
* Could be extended to **streaming pipelines** with Spark Structured Streaming

---