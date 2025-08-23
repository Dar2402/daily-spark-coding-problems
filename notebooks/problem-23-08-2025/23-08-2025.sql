SELECT m.missing_month
FROM (
    SELECT TO_CHAR(gs, 'YYYY-MM') AS missing_month
    FROM GENERATE_SERIES(DATE '2025-01-01', DATE '2025-12-01', INTERVAL '1 month') gs
) m
WHERE m.missing_month NOT IN (
    SELECT TO_CHAR(txn_date, 'YYYY-MM')
    FROM transactions_23_08_2025
);