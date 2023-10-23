-- gostei demais de aprender moda estatística, estamos avançando boys!!!
SELECT mode() WITHIN GROUP (ORDER BY amount) as 
most_frequent_value
FROM value_table
LIMIT 1
