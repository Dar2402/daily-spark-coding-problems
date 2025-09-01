
/*
 Write a SQL query to find all customers who made exactly one purchase
*/



SELECT purchases.customer_id, COUNT(customer_id) as purchase_count FROM purchases GROUP BY customer_id HAVING COUNT(customer_id) = 1;