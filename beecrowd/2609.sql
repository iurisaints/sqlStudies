SELECT categories.name, SUM(products.amount) AS sum FROM products
JOIN categories ON products.id_categories = categories.id
GROUP BY categories.id
