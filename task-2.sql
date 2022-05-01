SELECT categories.category_name AS category,
    COUNT(products.product_name) AS number_of_products
FROM products
RIGHT JOIN categories ON categories.category_id = products.category_id
GROUP BY category_name
ORDER BY number_of_products DESC, category;
