SELECT life_registry.name, CAST(life_registry.omega * 1.618 as DECIMAL(5,3)) AS "Fator N"
FROM life_registry
JOIN dimensions ON dimensions.id = life_registry.dimensions_id
WHERE dimensions.name IN ('C875', 'C774') AND life_registry.name LIKE 'Richard%'
ORDER BY life_registry.omega ASC
