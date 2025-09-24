This SQL project identifies the top 5 customers with the highest total purchase value in 2025.
The query uses aggregation (SUM) and ordering (ORDER BY) to rank customers based on their spending.

top_customers_2025.sql

-- Find the top 5 customers by total purchase value in 2025

SELECT 
    c.customer_id,
    c.name,
    SUM(o.total_amount) AS total_spent
FROM customers c
JOIN orders o 
    ON c.customer_id = o.customer_id
WHERE o.order_date >= '2025-01-01'
  AND o.order_date < '2026-01-01'
GROUP BY c.customer_id, c.name
ORDER BY total_spent DESC
LIMIT 5;

Query Explanation

JOIN: Combines customers with their respective orders.

WHERE: Filters only orders made during the year 2025.

SUM: Calculates the total purchase value per customer.

GROUP BY: Groups results by each unique customer.

ORDER BY: Sorts customers from the highest spenders to the lowest.

LIMIT 5: Restricts results to the top 5 customers.
