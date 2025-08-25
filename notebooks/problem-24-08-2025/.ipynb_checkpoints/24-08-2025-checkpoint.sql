/*
Problem Statement
You have a table product_sales(product_id, sale_date)
representing product sales dates.
Write a SQL query to find products that were sold in every month of 2025.
Sample Input (product_sales):
product_id	    sale_date
    P1	        2025-01-10
    P1	        2025-02-15
    P1	        2025-03-20
    P2	        2025-01-05
    P2	        2025-02-10


Expected Output:
product_id
    P1

*/
SELECT product_id
FROM product_sales
WHERE EXTRACT(YEAR FROM sale_date) = (SELECT DISTINCT DATE_PART('year', sale_date) AS year
                FROM product_sales)
GROUP BY product_id
HAVING COUNT(DISTINCT DATE_PART('month', sale_date)) = (SELECT COUNT(DISTINCT DATE_PART('month', sale_date)) AS month
                FROM product_sales);