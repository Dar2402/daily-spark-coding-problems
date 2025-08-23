WITH lagged AS (
    SELECT
        user_id,
        login_date,
        LAG(login_date) OVER (PARTITION BY user_id ORDER BY login_date) AS prev_date
    FROM daily_coding_problem_19_08_2025
),
gaps AS (
    SELECT
        user_id,
        login_date,
        CASE
            WHEN (login_date - prev_date) > 1 OR prev_date IS NULL THEN 1
            ELSE 0
        END AS is_new_streak
    FROM lagged
),
groups AS (
    SELECT
        user_id,
        login_date,
        SUM(is_new_streak) OVER (PARTITION BY user_id ORDER BY login_date ROWS BETWEEN UNBOUNDED PRECEDING AND CURRENT ROW) AS streak_id
    FROM gaps
)
SELECT
    user_id,
    COUNT(*) AS longest_streak
FROM groups
GROUP BY user_id, streak_id
HAVING COUNT(*) > 1
ORDER BY user_id;



CREATE TABLE transactions (
    user_id INT,
    txn_date DATE,
    amount INT
);
INSERT INTO transactions (user_id, txn_date, amount) VALUES
(1, '2025-01-01', 500),
(1, '2025-01-03', -200),
(1, '2025-01-05', 300),
(2, '2025-01-02', 1000),
(2, '2025-01-04', -400);


SELECT user_id, txn_date, amount, SUM(amount) OVER (
    PARTITION BY transactions.user_id
    ORDER BY transactions.txn_date
    ROWS BETWEEN UNBOUNDED PRECEDING AND CURRENT ROW
    ) AS running_balance
FROM transactions ORDER BY user_id, txn_date;


SELECT
    user_id,
    login_date,
    LAG(login_date) OVER (PARTITION BY user_id ORDER BY login_date) AS prev_date
FROM daily_coding_problem_19_08_2025;



CREATE TABLE user_exercises (
    user_id INT,
    exercise_date DATE,
    calories_burned INT
);




INSERT INTO user_exercises (user_id, exercise_date, calories_burned) VALUES
(1, '2025-08-01', 300),
(1, '2025-08-02', 250),
(1, '2025-08-04', 400),
(1, '2025-08-05', 200),
(2, '2025-08-01', 500),
(2, '2025-08-03', 300),
(2, '2025-08-04', 450),
(3, '2025-08-02', 100),
(3, '2025-08-03', 150),
(3, '2025-08-05', 200);


-- Q1: Calculate Running Calories
--
-- For each user, calculate the cumulative calories burned ordered by exercise_date.

SELECT user_exercises.user_id, user_exercises.exercise_date, calories_burned, SUM(user_exercises.calories_burned) OVER (
    PARTITION BY user_exercises.user_id
    ORDER BY user_exercises.exercise_date
    ROWS BETWEEN UNBOUNDED PRECEDING AND CURRENT ROW
    ) AS cumulative_calories FROM user_exercises ORDER BY user_id, exercise_date;


-- Q2: Find Previous Exercise Calories
--
-- For each exercise, show calories burned in the previous exercise for the same user.


SELECT
    user_id,
    exercise_date,
    calories_burned,
    COALESCE(
        LAG(calories_burned, 1) OVER (
            PARTITION BY user_id
            ORDER BY exercise_date
        ), 0
    ) AS previous_day_calories_burned
FROM user_exercises
ORDER BY user_id, exercise_date;
