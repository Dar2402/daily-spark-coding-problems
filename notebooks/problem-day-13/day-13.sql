CREATE TABLE daily_product_sales (
    product_id   VARCHAR(10),
    sale_date    DATE,
    sales        INT
);


INSERT INTO daily_product_sales (product_id, sale_date, sales) VALUES
('P1', '2025-01-01', 100),
('P1', '2025-01-02', 120),
('P1', '2025-01-03', 90),
('P2', '2025-01-01', 200),
('P2', '2025-01-02', 180),
('P2', '2025-01-03', 220);


/*
Write a SQL query to find products where sales decreased compared to the previous day.
*/
WITH sales_with_prev AS (
    SELECT
        product_id,
        sale_date,
        sales,
        LAG(sales) OVER (PARTITION BY product_id ORDER BY sale_date) AS prev_day_sales
    FROM daily_product_sales
)
SELECT *
FROM sales_with_prev
WHERE sales < prev_day_sales;










