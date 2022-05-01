SELECT customers.company_name,
    COUNT(orders.order_id) AS "orders",
    STRING_AGG(orders.order_id::VARCHAR, ',') AS "order_ids"
FROM customers
JOIN orders ON customers.customer_id = orders.customer_id
WHERE customers.country = 'USA'
GROUP BY customers.company_name
HAVING COUNT("orders") < 5
ORDER BY "orders", customers.company_name ASC;

/*
 - ARRAY_AGG és ARRAY_TO_STRING használata
   ARRAY_TO_STRING(ARRAY_AGG(orders.order_id), ',')
*/