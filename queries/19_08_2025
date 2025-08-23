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
