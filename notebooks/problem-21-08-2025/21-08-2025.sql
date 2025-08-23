-- Create table
--CREATE TABLE employee_salaries (
--    emp_id INT NOT NULL,
--    effective_date DATE NOT NULL,
 --   salary DECIMAL(10,2) NOT NULL
--);

-- Insert sample data
--INSERT INTO employee_salaries (emp_id, effective_date, salary) VALUES
--(1, '2025-01-01', 50000),
--(1, '2025-02-01', 55000),
--(1, '2025-03-01', 60000),
--(2, '2025-01-15', 40000),
--(2, '2025-03-01', 45000),
--(3, '2025-01-10', 30000);


--You have a table employee_salaries(emp_id, effective_date, salary) containing salary history for employees. Write a SQL query to find employees whose salary changed more than once and display the number of changes for each.

SELECT emp_id, (COUNT(*) - 1) AS change_count FROM employee_salaries GROUP BY emp_id HAVING COUNT(*) > 1;
