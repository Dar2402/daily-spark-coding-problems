/*
Write a query to **find customers whose purchase amounts strictly increased with each new purchase date**.
*/
CREATE TABLE purchases (
    customer_id   VARCHAR(10),
    purchase_date DATE,
    amount        INT
);

INSERT INTO purchases (customer_id, purchase_date, amount)
VALUES
  ('C1', '2025-01-01', 100),
  ('C1', '2025-01-05', 200),
  ('C1', '2025-01-10', 300),
  ('C2', '2025-01-02', 150),
  ('C2', '2025-01-06', 120),
  ('C3', '2025-01-03', 200),
  ('C3', '2025-01-09', 250);


WITH cte AS (
    SELECT
        customer_id,
        amount,
        LEAD(amount, 1) OVER (
            PARTITION BY customer_id
            ORDER BY purchase_date
            ) AS next_purchase
    FROM purchases
)
SELECT DISTINCT customer_id FROM cte WHERE next_purchase - amount > 0;