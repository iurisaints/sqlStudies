SELECT products.name
FROM products
JOIN providers ON providers.id = products.id_providers
WHERE products.amount between 10 and 20 
AND providers.name LIKE 'P%'
