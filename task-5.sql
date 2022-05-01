SELECT TO_CHAR(orders.order_date, 'YYYY') AS "year",
    TO_CHAR(orders.order_date, 'MM') AS "month",
    COUNT(orders.order_id) AS "order_count",
    SUM(order_details.unit_price * (1 - order_details.discount) * order_details.quantity)::INTEGER AS "revenue"
FROM orders
JOIN order_details ON orders.order_id = order_details.order_id
WHERE TO_CHAR(orders.order_date, 'YYYY') = '1997'
GROUP BY "year", "month"
ORDER BY "month" ASC;

/* 
 - ROUND használata ::INTEGER helyett
 - DATE_PART, TO_CHAR, EXTRACT használata dátum szétbontásra
*/