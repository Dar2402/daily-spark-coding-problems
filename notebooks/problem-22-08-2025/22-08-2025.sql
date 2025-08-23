
-- CREATE TABLE employee_manager (
   -- emp_id INT NOT NULL,
   -- manager_id INT NOT NULL,
   -- change_date DATE NOT NULL
--);

-- Insert sample data
--INSERT INTO employee_manager (emp_id, manager_id, change_date) VALUES
--(1, 10, '2025-01-01'),
--(1, 10, '2025-02-01'),
--(2, 11, '2025-01-01'),
--(2, 12, '2025-03-01'),
--(3, 13, '2025-01-05');

-- You have a table employee_manager(emp_id, manager_id, change_date) showing employees' managers over time. Write a SQL query to find employees who never changed their manager across all records.
-- SELECT * FROM employee_manager;

SELECT emp_id FROM employee_manager GROUP BY emp_id HAVING (COUNT(DISTINCT manager_id)) = 1;











