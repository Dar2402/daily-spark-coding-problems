## **Problem: Advanced User Session Analytics**

A user login website tracks detailed user activities across sessions. For each user per day, you need to calculate:

1. **Number of Logins** – Count of login events per day.
2. **Session Times** – Duration of each session (between login and logout) per day.
3. **Total Usage Time** – Sum of all session durations per day.
4. **Average Usage Time** – Average session duration per day.
5. **Most Used Device** – Device used most frequently per day.
6. **Top Location** – Location from where the user accessed most events per day.
7. **Unique Browsers** – Count of distinct browsers used per day.
8. **Event Counts** – Count of each event type per day (stored separately).

### **Additional Notes**

* Events belong to different sessions identified by `session_id`.
* A session starts at `login` and ends at `logout`. If no `logout`, assume session ends at **23:59:59** for that day.
* Event types include: `login`, `logout`, `click`, `view`, `purchase`.

---

## **Sample Input from CSV file (Simplified)**

| user\_id | event\_time         | event\_type | device  | location | browser | session\_id |
| -------- | ------------------- | ----------- | ------- | -------- | ------- | ----------- |
| U1       | 2025-08-27 09:00:00 | login       | mobile  | India    | Chrome  | S101        |
| U1       | 2025-08-27 09:15:00 | click       | mobile  | India    | Chrome  | S101        |
| U1       | 2025-08-27 09:45:00 | logout      | mobile  | India    | Chrome  | S101        |
| U2       | 2025-08-27 10:00:00 | login       | desktop | USA      | Firefox | S202        |
| U2       | 2025-08-27 10:30:00 | view        | desktop | USA      | Firefox | S202        |
| U2       | 2025-08-27 11:00:00 | logout      | desktop | USA      | Firefox | S202        |

---

## **Expected Output 1: Main Metrics**

| user\_id | date       | num\_logins | session\_times(mins) | total\_usage(mins) | avg\_usage(mins) | most\_device | top\_location | unique\_browsers |
| -------- | ---------- | ----------- | -------------------- | ------------------ | ---------------- | ------------ | ------------- | ---------------- |
| U1       | 2025-08-27 | 1           | \[45]                | 45                 | 45.0             | mobile       | India         | 1                |
| U2       | 2025-08-27 | 1           | \[60]                | 60                 | 60.0             | desktop      | USA           | 1                |

---

## **Expected Output 2: Event Counts (Separate Table)**

| user\_id | date       | login\_count | logout\_count | click\_count | view\_count | purchase\_count |
| -------- | ---------- | ------------ | ------------- | ------------ | ----------- | --------------- |
| U1       | 2025-08-27 | 1            | 1             | 1            | 0           | 0               |
| U2       | 2025-08-27 | 1            | 1             | 0            | 1           | 0               |

---