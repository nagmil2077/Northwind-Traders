SELECT country, COUNT(customer_id) AS number_of_customers
FROM customers
GROUP BY country
ORDER BY number_of_customers DESC
LIMIT 5;
