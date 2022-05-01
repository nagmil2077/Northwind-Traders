SELECT products.product_name,
    SUM(order_details.unit_price * (1 - order_details.discount) * order_details.quantity)::INTEGER AS "sum"
FROM products
LEFT JOIN order_details ON products.product_id = order_details.product_id
GROUP BY product_name
ORDER BY "sum" ASC
LIMIT 10;

/*
 - ROUND használata ::INTEGER helyett
   ROUND(SUM(order_details.unit_price * (1 - order_details.discount) * order_details.quantity))
 */