## **Problem Scenario: Online Learning Engagement Analysis**

### **Background**

You are working for an online learning platform (like Coursera or Udemy).
The platform tracks student activities such as **logins, watching videos, attempting quizzes, completing courses, and forum participation** across multiple courses and devices.

However, the raw data contains:

* Missing device/location information
* Multiple activity types per student per day
* Varying engagement durations for different activities

The company wants **daily engagement analytics** and **course-level insights** for product and academic teams.

---

## **Business Objectives**

1. **Daily Engagement Metrics**

   * Total active students per day
   * Total activities per day
   * Average session duration per day
   * Device and location distribution

2. **Course-Level Analytics**

   * Course completion rates
   * Top 5 courses by engagement time
   * Unique students per course per day

3. **Student Behavior Metrics**

   * Average time spent per student per day
   * Number of quizzes attempted per student
   * Students completing at least 1 course per week

---

## **Sample Input Table (Simplified)**

| activity\_id | student\_id | course\_id | activity\_type   | activity\_time      | device  | location | duration\_minutes |
| ------------ | ----------- | ---------- | ---------------- | ------------------- | ------- | -------- | ----------------- |
| A123456      | S1          | C2         | Login            | 2025-08-20 09:15:00 | Mobile  | USA      |                   |
| A234567      | S1          | C2         | Watch\_Video     | 2025-08-20 09:30:00 | Mobile  | USA      | 20                |
| A345678      | S2          | C3         | Attempt\_Quiz    | 2025-08-20 10:00:00 | Desktop | India    | 15                |
| A456789      | S3          | C5         | Complete\_Course | 2025-08-20 11:00:00 | Tablet  | UK       |                   |
| A567890      | S1          | C2         | Forum\_Post      | 2025-08-20 11:20:00 | Mobile  | USA      |                   |

---

## **Expected Output 1 – Daily Engagement Metrics**

| date       | total\_activities | unique\_students | avg\_duration\_per\_activity | top\_device | top\_location |
| ---------- | ----------------- | ---------------- | ---------------------------- | ----------- | ------------- |
| 2025-08-20 | 400               | 120              | 18.5 mins                    | Mobile      | India         |
| 2025-08-21 | 390               | 118              | 17.2 mins                    | Desktop     | USA           |

---

## **Expected Output 2 – Course-Level Analytics**

| date       | course\_id | completion\_rate(%) | total\_time\_spent | unique\_students |
| ---------- | ---------- | ------------------- | ------------------ | ---------------- |
| 2025-08-20 | C2         | 35%                 | 1200 mins          | 45               |
| 2025-08-20 | C3         | 28%                 | 850 mins           | 38               |
| 2025-08-20 | C5         | 40%                 | 600 mins           | 20               |

---

## **Expected Output 3 – Student Behavior Metrics**

| student\_id | date       | total\_time\_spent | quizzes\_attempted | courses\_completed |
| ----------- | ---------- | ------------------ | ------------------ | ------------------ |
| S1          | 2025-08-20 | 250 mins           | 2                  | 1                  |
| S2          | 2025-08-20 | 180 mins           | 1                  | 0                  |
| S3          | 2025-08-20 | 75 mins            | 0                  | 1                  |

---

This scenario mimics **real-world complexity** with:

* Missing values handling
* Per-day, per-course, and per-student aggregations
* Multiple dimensions like device, location, and activity types

---